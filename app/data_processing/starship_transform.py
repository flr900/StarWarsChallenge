import logging

from ..api import StarWarsAPI

from .transformer import Transformer
from .people_transform import PeopleTransform
from .film_transformer import FilmsTransform

from ..repositories.people_repository import PeopleRepository
from ..repositories.people_starship_repository import PeopleStarshipsRepository
from ..repositories.films_repository import FilmRepository 
from ..repositories.starships_repository import StarshipRepository 
from ..repositories.films_starships_repository import FilmsStarshipsRepository


class StarshipTransform(Transformer): # Corrected class name

    def __init__(self):
        super().__init__()
        self.repository = StarshipRepository() # Corrected repository
        self.api = StarWarsAPI()

    def batch_load_data(self):
        logging.info("Initializing batch load of starships data...") # Corrected log message

        rows_inserted = 0
        starships_data = self.api.get_starships_data() # Corrected API call

        for starship in starships_data:
            logging.info("Processing starship data...") # Corrected log message

            related_films_url = starship.pop('films', None) 
            related_people_url = starship.pop('pilots', None)

            starship = self.transform_data(starship) # Corrected variable name

            original_starship_data = self.repository.get_starship(starship['name']) # Corrected method call

            if original_starship_data:
                last_update = self.parse_timestamp(original_starship_data['edited'])
                current_update = starship['edited']

                if current_update > last_update:
                    try:
                        logging.info(f"Updating starship with name: {starship['name']}")
                        self.repository.update(starship)
                        logging.info(f"Updated starship with name: {starship['name']}")
                        continue
                    except Exception as e:
                        logging.error(f"Error updating starship with name {starship['name']}: {e}", exc_info=True)
                        continue
                else:
                    logging.info(f"Starship {starship['name']} is already up to date.")
                    continue
            else:
                logging.info(f"New starship detected - {starship['name']}.")

                try:
                    logging.info(f"Initializing insert of starship {starship['name']} into starships table...")
                    inserted_starship_id = self.repository.insert(starship)
                    rows_inserted = rows_inserted + 1       
                except Exception as e:
                    logging.critical(f"Failed to insert data into starships table: {e}...",exc_info=True)
                    continue

                self.film_many_many_relation(inserted_starship_id, related_films_url)
                self.people_many_many_relation(inserted_starship_id, related_people_url)


        
            logging.info(f"{rows_inserted} Sucessfully rows were inserted on starships table")

    def transform_data(self, data):
        starship = data.copy()        

        starship['created'] = self.parse_timestamp(starship['created'])
        starship['edited'] = self.parse_timestamp(starship['edited'])

        starship['MGLT'] = self.parse_float(starship['MGLT'])
        starship['max_atmosphering_speed'] = self.parse_int(starship['max_atmosphering_speed'])
        starship['cost_in_credits'] = self.parse_int(starship['cost_in_credits'])
        starship['passengers'] = self.parse_int(starship['passengers'])
        starship['hyperdrive_rating'] = self.parse_float(starship['hyperdrive_rating'])
        starship['length'] = self.parse_float(starship['length'])
        starship['cargo_capacity'] = self.parse_int(starship['cargo_capacity'])

        return starship
    
    def film_many_many_relation(self, row_id, data_url):
        logging.info(f"Starting insertion of starship_film table...")   

        film_tranform = FilmsTransform()
        film_repository = FilmRepository()
        relational_repository = FilmsStarshipsRepository()

        try:
            for url in data_url:
                api_data =self.api.fetch_data_from_url(url)
                db_data = film_repository.get_film(api_data['title'])

                if(db_data): 
                    logging.info(f"Inserting to relational table -> Starship:{row_id}  Film:{db_data['id']}")       
                    relational_repository.insert(db_data['id'],row_id)     
                else:            
                    api_data = film_tranform.transform_data(api_data)
                    db_id = film_repository.insert(api_data)
                    logging.info(f"Inserting to people_film table -> Starship:{row_id}  Film:{db_id}")       
                    relational_repository.insert(db_id,row_id)
        except Exception as e:
            logging.error('Failed on inserting relational data', exc_info=True)


    def people_many_many_relation(self, row_id, data_url):
        logging.info(f"Starting insertion of starship_people table...")   

        people_tranform = PeopleTransform()
        people_repository = PeopleRepository()
        relational_repository = PeopleStarshipsRepository()

        try:
            for url in data_url:
                api_data =self.api.fetch_data_from_url(url)
                db_data = people_repository.get_person(api_data['name'])

                if(db_data): 
                    logging.info(f"Inserting to relational table -> Starship:{row_id}  Film:{db_data['id']}")       
                    relational_repository.insert(db_data['id'],row_id)     
                else:            
                    api_data = people_tranform.transform_data(api_data)
                    db_id = people_repository.insert(api_data)
                    logging.info(f"Inserting to people_film table -> Starship:{row_id}  Film:{db_id}")       
                    relational_repository.insert(db_id,row_id)
        except Exception as e:
            logging.error('Failed on inserting relational data', exc_info=True)
