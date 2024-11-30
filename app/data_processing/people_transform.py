
import logging
from datetime import datetime
from ..api import StarWarsAPI
from ..repositories.people_repository import PeopleRepository
from .transformer import Transformer


class PeopleTransform(Transformer):
    def __init__(self):
        super().__init__()
        self.people_repository = PeopleRepository()
        self.api = StarWarsAPI()

    def batch_load_people_data(self):
        logging.info("Initializing batch load of people data...")

        rows_to_insert = []
        people_data = self.api.get_people_data()

        for person in people_data:
            logging.info("Initializing batch load of people data...")
            
            person = self.transform_data(person)

            original_person_data = self.people_repository.get_person(person['name'])
        
            if original_person_data:
                last_update = self.parse_timestamp(original_person_data['edited'])
                current_update = person['edited']

                if current_update > last_update:
                    try:
                        print(f"{current_update} > {last_update} vou atualizar ein {person['name']}")
                        logging.info(f"Updated Person with name: {person['name']}")
                        self.people_repository.update_people(person)
                        logging.info(f"Updated Person with name: {person['name']}")
                        continue

                    except Exception as e:
                        logging.error(f"Error updating Person with name {person['name']}: {e}",exc_info=True)
                        continue
                else:
                    logging.info(f"Person {person['name']} is already up to date.")
                    continue
            else:
                logging.info(f"New row detected for Person - {person['name']}.")
                rows_to_insert.append(person)

        
        len_rows_to_insert = len(rows_to_insert)
        if(len_rows_to_insert > 0):
            try:
                logging.info(f"Initializing bulk insert into people table...")
                self.people_repository.bulk_insert(rows_to_insert)
                logging.info(f"Successfuly loaded people data")
                return
            except Exception as e:
                    logging.critical(f"Failed to insert data into people table: {e}...",exc_info=True)
        else:
                logging.info(f"There are no new rows to insert on people table")


    def transform_data(self, person_data):
        person = person_data.copy()
        del person['films']
        del person['species']
        del person['starships']
        del person['vehicles']

        person['created'] = self.parse_timestamp(person['created'])
        person['edited'] = self.parse_timestamp(person['edited'])


        person['mass'] = self.parse_int(person['mass'])
        person['height'] = self.parse_int(person['height'])

        person['birth_year'] = None if person['birth_year'] == 'unknown' else person['birth_year']
        person['eye_color'] = None if person['eye_color'] == 'unknown' else person['eye_color']
        person['gender'] = None if person['gender'] == 'unknown' else person['gender']
        person['hair_color'] = None if person['hair_color'] == 'unknown' else person['hair_color']
        person['skin_color'] = None if person['skin_color'] == 'unknown' else person['skin_color']

        try:
            logging.info(f"Requesting homeworld data for {person['name']}...")
            homeworld_url = person['homeworld'] 
            homeworldData = self.api.fetch_data_from_url(homeworld_url)

            person['homeworld'] = homeworldData['name']
        except Exception as e:
            logging.error(f"Request failed for {e}...",exc_info=True)
            person['homeworld'] = None
        
        return person

        