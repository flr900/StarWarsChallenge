import logging
from ..db.db import db
from sqlalchemy import insert, select, text, update
from sqlalchemy.orm import Session
from ..db.models.planets_model import Planet

class PlanetRepository:
    def __init__(self):
        self.engine = db

    def bulk_insert(self, data):
        logging.info("Initializing bulk insert data...")
        try:
            with self.engine.connect() as connection:
                    query = insert(Planet).values(data)
                    result = connection.execute(query)
                    connection.commit()
                    logging.info(f"Inserted {result.rowcount} rows")
                    return result.rowcount
        except Exception as e:
            connection.rollback()
            import traceback
            logging.critical(f"Failed to bulk insert data: {e}...")
            logging.critical(f"Traceback: {traceback.print_exc()}...")
            return

    def get_planet(self, name):
        try:
            logging.info(f"Initializing db connection", exc_info=True)
            with self.engine.connect() as connection:
                try:
                    logging.info(f"DB connected", exc_info=True)
                    query = select(Planet).where(Planet.name == name)
                    person = connection.execute(query).mappings().one_or_none()
                    if person:
                        return person
                    return None
                except Exception as e:
                    logging.critical(f"Failed to fetch_data: {e}...", exc_info=True)
                    return
                
        except Exception as e:
            print('to aqui no erro')
            logging.error(f"Error retrieving planet by name: {name}. Error: {e}", exc_info=True)
            return None

    def get_by_url(self, url):
        with self.engine.connect() as connection:
            query = select(Planet).where(Planet.url == url)
            person = connection.execute(query).mappings().one_or_none()
            if person:
                return person
            return None

    def update(self, planet):
        logging.info(f"Updating planet with name: {planet['name']}")
        planet_id = planet.pop('id')
        with self.engine.connect() as connection:
            try:
                query = update(Planet).where(Planet.id == planet_id).values(**planet)
                connection.execute(query)
                connection.commit()
            except Exception as e:
                connection.rollback()
                print(f"Error updating planet with id {planet_id}: {e}")

    def insert(self, planet_data):
        with self.engine.connect() as connection:
            try:
                query = insert(Planet).values(planet_data)
                result = connection.execute(query)
                connection.commit()
                logging.info(f"Inserted planet: {planet_data.get('name')} with ID: {result.inserted_primary_key[0]}")
                return result.inserted_primary_key[0]
            except Exception as e:
                connection.rollback()
                logging.error(f"Failed to insert planet: {planet_data}. Error: {e}", exc_info=True)
