import logging

from ..api import StarWarsAPI

from .transformer import Transformer
from .film_transformer import FilmsTransform
from .people_transform import PeopleTransform

from ..repositories.films_repository import FilmRepository
from ..repositories.films_species_repository import FilmsSpeciesRepository
from ..repositories.people_repository import PeopleRepository
from ..repositories.people_species_repository import PeopleSpeciesRepository
from ..repositories.species_repository import SpeciesRepository  # Corrected import


class SpeciesTransform(Transformer):  # Corrected class name
    def __init__(self):
        super().__init__()
        self.repository = SpeciesRepository()  # Corrected repository
        self.api = StarWarsAPI()

    def batch_load_data(self):
        logging.info("Initializing batch load of species data...")  # Corrected log message

        rows_inserted = 0
        species_data = self.api.get_species_data()  # Corrected API call

        for species in species_data:
            logging.info("Processing species data...")  # Corrected log message
            
            related_films_url = species.pop('films', None)
            related_people_url = species.pop('people', None)
            
            species = self.transform_data(species)  # Corrected variable name

            original_species_data = self.repository.get_species(species['name'])  # Corrected method call

            if original_species_data:
                last_update = self.parse_timestamp(original_species_data['edited'])
                current_update = species['edited']

                if current_update > last_update:
                    try:
                        logging.info(f"Updating species with name: {species['name']}")
                        self.repository.update(species)
                        logging.info(f"Updated species with name: {species['name']}")
                        continue
                    except Exception as e:
                        logging.error(f"Error updating species with name {species['name']}: {e}", exc_info=True)
                        continue
                else:
                    logging.info(f"Species {species['name']} is already up to date.")
                    self.film_many_many_relation(original_species_data['id'], related_films_url)
                    self.people_many_many_relation(original_species_data['id'], related_people_url)
                    continue
            else:
                logging.info(f"New species detected - {species['name']}.")

            try:
                logging.info(f"Initializing insert of species {species['name']} into species table...")
                inserted_species_id = self.repository.insert(species)
                rows_inserted = rows_inserted + 1       
            except Exception as e:
                logging.critical(f"Failed to insert data into species table: {e}...",exc_info=True)
                continue

            self.film_many_many_relation(inserted_species_id, related_films_url)
            self.people_many_many_relation(inserted_species_id, related_people_url)

        
            logging.info(f"{rows_inserted} Sucessfully rows were inserted on species table")

    def transform_data(self, data):
        species = data.copy()
        
        try:
            logging.info(f"Requesting homeworld data for {species['name']}...")
            homeworld_url = species['homeworld'] 
            homeworldData = self.api.fetch_data_from_url(homeworld_url)

            species['homeworld'] = homeworldData['name']
        except Exception as e:
            logging.error(f"Request failed for {e}...",exc_info=True)
            species['homeworld'] = None


        species['created'] = self.parse_timestamp(species['created'])
        species['edited'] = self.parse_timestamp(species['edited'])
        species['average_height'] = self.parse_int(species['average_height'])
        species['average_lifespan'] = self.parse_int(species['average_lifespan'])


        return species

    def film_many_many_relation(self, row_id, data_url):
        logging.info(f"Starting insertion of species_film table...")   

        film_tranform = FilmsTransform()
        film_repository = FilmRepository()
        relational_repository = FilmsSpeciesRepository()

        try:
            for url in data_url:
                api_data =self.api.fetch_data_from_url(url)
                db_data = film_repository.get_film(api_data['title'])

                if(db_data): 
                    logging.info(f"Inserting to relational table -> species:{row_id}  Film:{db_data['id']}")       
                    relational_repository.insert(db_data['id'],row_id)     
                else:            
                    api_data = film_tranform.transform_data(api_data)
                    db_id = film_repository.insert(api_data)
                    logging.info(f"Inserting to people_film table -> species:{row_id}  Film:{db_id}")       
                    relational_repository.insert(db_id,row_id)
        except Exception as e:
            logging.error('Failed on inserting relational data', exc_info=True)

    def people_many_many_relation(self, row_id, data_url):
        logging.info(f"Starting insertion of species_film table...")   

        people_tranform = PeopleTransform()
        people_repository = PeopleRepository()
        relational_repository = PeopleSpeciesRepository()

        try:
            for url in data_url:
                api_data =self.api.fetch_data_from_url(url)
                db_data = people_repository.get_person(api_data['name'])

                if(db_data): 
                    logging.info(f"Inserting to relational table -> species:{row_id}  Film:{db_data['id']}")       
                    relational_repository.insert(db_data['id'],row_id)     
                else:            
                    api_data = people_tranform.transform_data(api_data)
                    db_id = people_repository.insert(api_data)
                    logging.info(f"Inserting to people_film table -> species:{row_id}  Film:{db_id}")       
                    relational_repository.insert(db_id,row_id)
        except Exception as e:
            logging.error('Failed on inserting relational data', exc_info=True)