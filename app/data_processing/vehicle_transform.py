import logging

from ..api import StarWarsAPI
from .transformer import Transformer
from .film_transformer import FilmsTransform
from .people_transform import PeopleTransform

from ..repositories.vehicles_repository import VehicleRepository  
from ..repositories.films_repository import FilmRepository
from ..repositories.films_vehicle_repository import FilmsVehiclesRepository
from ..repositories.people_repository import PeopleRepository
from ..repositories.people_vehicles_repository import PeopleVehiclesRepository


class VehicleTransform(Transformer): 
    def __init__(self):
        super().__init__()
        self.repository = VehicleRepository()  
        self.api = StarWarsAPI()

    def batch_load_data(self):
        logging.info("Initializing batch load of vehicle data...")   

        rows_inserted = 0
        vehicles_data = self.api.get_vehicles_data() 

        for vehicle in vehicles_data:
            logging.info("Processing vehicle data...")   
            
            related_films_url = vehicle.pop('films', None) 
            related_people_url = vehicle.pop('pilots', None)  

            vehicle = self.transform_data(vehicle)  

            original_vehicle_data = self.repository.get_vehicle(vehicle['name']) 

            if original_vehicle_data:
                last_update = self.parse_timestamp(original_vehicle_data['edited'])
                current_update = vehicle['edited']

                if current_update > last_update:
                    try:
                        logging.info(f"Updating vehicle with name: {vehicle['name']}")
                        self.repository.update(vehicle)
                        logging.info(f"Updated vehicle with name: {vehicle['name']}")
                        continue
                    except Exception as e:
                        logging.error(f"Error updating vehicle with name {vehicle['name']}: {e}", exc_info=True)
                        continue
                else:
                    logging.info(f"Vehicle {vehicle['name']} is already up to date.")
                    self.film_many_many_relation(original_vehicle_data['id'], related_films_url)
                    self.people_many_many_relation(original_vehicle_data['id'], related_people_url)
                    continue
            else:
                logging.info(f"New vehicle detected - {vehicle['name']}.")
   
            try:
                logging.info(f"Initializing insert of vehicle {vehicle['name']} into vehicles table...")
                inserted_vehicle_id = self.repository.insert(vehicle)
                rows_inserted = rows_inserted + 1       
            except Exception as e:
                logging.critical(f"Failed to insert data into vehicles table: {e}...",exc_info=True)
                continue

            self.film_many_many_relation(inserted_vehicle_id, related_films_url)
            self.people_many_many_relation(inserted_vehicle_id, related_people_url)

            logging.info(f"{rows_inserted} Sucessfully rows were inserted on vehicles table")

    def transform_data(self, data):
        vehicle = data.copy()

        vehicle['created'] = self.parse_timestamp(vehicle['created'])
        vehicle['edited'] = self.parse_timestamp(vehicle['edited'])
        vehicle['cost_in_credits'] = self.parse_int(vehicle['cost_in_credits'])
        vehicle['passengers'] = self.parse_int(vehicle['passengers'])
        vehicle['crew'] = self.parse_int(vehicle['crew'])
        vehicle['length'] = self.parse_float(vehicle['length'])
        vehicle['max_atmosphering_speed'] = self.parse_int(vehicle['max_atmosphering_speed'])
        vehicle['cargo_capacity'] = self.parse_int(vehicle['cargo_capacity'])


        return vehicle

    def film_many_many_relation(self, row_id, data_url):
        logging.info(f"Starting insertion of vehicle_film table...")   

        film_tranform = FilmsTransform()
        film_repository = FilmRepository()
        relational_repository = FilmsVehiclesRepository()

        try:
            for url in data_url:
                api_data =self.api.fetch_data_from_url(url)
                db_data = film_repository.get_film(api_data['title'])

                if(db_data): 
                    logging.info(f"Inserting to relational table -> Vehicle:{row_id}  Film:{db_data['id']}")       
                    relational_repository.insert(db_data['id'],row_id)     
                else:            
                    api_data = film_tranform.transform_data(api_data)
                    db_id = film_repository.insert(api_data)
                    logging.info(f"Inserting to people_film table -> Vehicle:{row_id}  Film:{db_id}")       
                    relational_repository.insert(db_id,row_id)
        except Exception as e:
            logging.error('Failed on inserting relational data', exc_info=True)

    def people_many_many_relation(self, row_id, data_url):
        logging.info(f"Starting insertion of vehicle_people table...")   

        people_tranform = PeopleTransform()
        people_repository = PeopleRepository()
        relational_repository = PeopleVehiclesRepository()

        try:
            for url in data_url:
                api_data =self.api.fetch_data_from_url(url)
                db_data = people_repository.get_person(api_data['name'])

                if(db_data): 
                    logging.info(f"Inserting to relational table -> vehicle:{row_id}  Film:{db_data['id']}")       
                    relational_repository.insert(db_data['id'],row_id)     
                else:            
                    api_data = people_tranform.transform_data(api_data)
                    db_id = people_repository.insert(api_data)
                    logging.info(f"Inserting to people_film table -> vehicle:{row_id}  Film:{db_id}")       
                    relational_repository.insert(db_id,row_id)
        except Exception as e:
            logging.error('Failed on inserting relational data', exc_info=True)
