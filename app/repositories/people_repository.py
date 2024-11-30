import logging
from ..db.db import db
from sqlalchemy import insert, select, text, update
from sqlalchemy.orm import Session
from ..db.models.people_model import People

class PeopleRepository:
    def __init__(self):
        self.engine = db

    def bulk_insert(self, people_data):
        logging.info("Initializing bulk insert of people data...")
        with self.engine.connect() as connection:
            try:
                stmt = insert(People).values(people_data)
                result = connection.execute(stmt)
                connection.commit()
                logging.info(f"Inserted {result.rowcount} rows")
                return result.rowcount
            except Exception as e:
                connection.rollback()
                import traceback
                logging.critical(f"Failed to bulk insert data: {e}...")
                logging.critical(f"Traceback: {traceback.print_exc()}...")
                return

    def already_exists(self, name):
        with self.engine.connect() as connection:
            query = select(People).where(People.name == name)
            instance = connection.execute(query).scalar_one_or_none()
            if instance:
                return True
            return False
        
    def get_person(self, name):
        with self.engine.connect() as connection:
            query = select(People).where(People.name == name)
            person = connection.execute(query).mappings().one_or_none()
            if person:
                return person
            return None
        
    def get_by_url(self, url):
        with self.engine.connect() as connection:
            query = select(People).where(People.url == url)
            person = connection.execute(query).mappings().one_or_none()
            if person:
                return person
            return None

    def update_people(self, person):
        logging.info(f"Updating Person with name: {person['name']}")
        person_id = person.pop('id')
        with self.engine.connect() as connection:
            try:
                query = update(People).where(People.id == person_id).values(**person)
                connection.execute(query)
                connection.commit()
            except Exception as e:
                connection.rollback()
                print(f"Error updating Person with id {person_id}: {e}")

    def insert(self, person_data):
        with self.engine.connect() as connection:
            try:
                query = insert(People).values(person_data)
                result = connection.execute(query)
                connection.commit()
                logging.info(f"Inserted person: {person_data.get('name')} with ID: {result.inserted_primary_key[0]}")
                return result.inserted_primary_key[0]
            except Exception as e:
                connection.rollback()
                logging.error(f"Failed to insert person: {person_data}. Error: {e}", exc_info=True)
