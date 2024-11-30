
import logging

from ..api import StarWarsAPI
from .transformer import Transformer
from .film_transformer import FilmsTransform
from ..repositories.films_repository import FilmRepository
from ..repositories.films_planets_repository import PlanetFilmRepository
from ..repositories.planets_repository import PlanetRepository


class PlanetTransform(Transformer):

    def __init__(self):
        super().__init__()
        self.repository = PlanetRepository()
        self.api = StarWarsAPI()

    def batch_load_data(self):
        logging.info("Initializing batch load of planets data...")

        rows_inserted = 0
        planets_data = self.api.get_planets_data()

        for planet in planets_data:
            logging.info(f"Transforming {planet['name']}")
            
            related_films_url = planet.pop('films')
            planet = self.transform_data(planet)
            logging.info(f"Fetching original data...")
            original_planet_data = self.repository.get_planet(planet['name'])
            logging.info(f"Original data fetched")

            if original_planet_data:
                logging.info(f"Original data found")
                last_update = self.parse_timestamp(original_planet_data['edited'])
                current_update = planet['edited']

                if current_update > last_update:
                    try:
                        logging.info(f"Updated planet with name: {planet['name']}")
                        self.repository.update(planet)
                        logging.info(f"Updated planet with name: {planet['name']}")
                        continue

                    except Exception as e:
                        logging.error(f"Error updating Person with name {planet['name']}: {e}",exc_info=True)
                        continue
                else:
                    logging.info(f"Planet {planet['name']} is already up to date.")
                    continue
            else:
                logging.info(f"Original data not found")
                logging.info(f"New row detected - {planet['name']}.")

            
            try:
                logging.info(f"Initializing insert of planet {planet['name']} into planets table...")
                inserted_planet_id = self.repository.insert(planet)
                rows_inserted = rows_inserted + 1       
            except Exception as e:
                logging.critical(f"Failed to insert data into planets table: {e}...",exc_info=True)
                continue

            self.film_many_many_relation(inserted_planet_id, related_films_url)

    
        logging.info(f"{rows_inserted} Sucessfully rows were inserted on planets table")

    def transform_data(self, data):
        planet = data.copy()
        del planet['residents']
        try:
            planet['created'] = self.parse_timestamp(planet['created'])
            planet['edited'] = self.parse_timestamp(planet['edited'])


            planet['rotation_period'] = self.parse_int(planet['rotation_period'])
            planet['orbital_period'] = self.parse_int(planet['orbital_period'])
            planet['diameter'] = self.parse_int(planet['diameter'])
            planet['surface_water'] = self.parse_int(planet['surface_water'])
            planet['population'] = self.parse_int(planet['population'])
            planet['gravity'] = self.parse_float(planet['gravity'])
            return planet
        
        except Exception as e:
            raise ValueError(e)
    
        

    def film_many_many_relation(self, row_id, data_url):
        logging.info(f"Starting insertion of planet_film table...")   

        film_tranform = FilmsTransform()
        film_repository = FilmRepository()
        relational_repository = PlanetFilmRepository()

        try:
            for url in data_url:
                api_data =self.api.fetch_data_from_url(url)
                db_data = film_repository.get_film(api_data['title'])

                if(db_data): 
                    logging.info(f"Inserting to relational table -> planet:{row_id}  Film:{db_data['id']}")       
                    relational_repository.insert(db_data['id'],row_id)     
                else:            
                    logging.info(f"Parsing film information")       
                    api_data = film_tranform.transform_data(api_data)
                    db_id = film_repository.insert(api_data)
                    logging.info(f"Inserting to people_film table -> planet:{row_id}  Film:{db_id}")       
                    relational_repository.insert(db_id,row_id)
        except Exception as e:
            logging.error('Failed on inserting relational data', exc_info=True)
