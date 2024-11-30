import logging
from ..db.db import db
from sqlalchemy import insert, select, update
from sqlalchemy.orm import Session
from ..db.models.starships_model import Starship


class StarshipRepository:
    def __init__(self):
        self.engine = db

    def bulk_insert(self, data):
        logging.info("Initializing bulk insert data...")
        with self.engine.begin() as connection:
            try:
                query = insert(Starship).values(data)  
                result = connection.execute(query)
                connection.commit()
                logging.info(f"Inserted {result.rowcount} rows")
                return result.rowcount
            except Exception as e:
                connection.rollback()
                import traceback
                logging.critical(f"Failed to bulk insert data: {e}...", exc_info=True) 
                return 0 

    def get_starship(self, name): 
        with self.engine.begin() as connection:
            try:
                query = select(Starship).where(Starship.name == name) 
                starship = connection.execute(query).mappings().one_or_none()
                return starship
            except Exception as e:
                logging.error(f"Error retrieving starship by name: {name}. Error: {e}", exc_info=True)
                return None

    def get_by_url(self, url):
        with self.engine.begin() as connection:
            try:
                query = select(Starship).where(Starship.url == url)
                starship = connection.execute(query).mappings().one_or_none()
                return starship
            except Exception as e:
                logging.error(f"Error retrieving starship by url: {url}. Error: {e}", exc_info=True)
                return None

    def update(self, starship): 
        logging.info(f"Updating starship with name: {starship['name']}")
        starship_id = starship.pop('id')
        with self.engine.begin() as connection:
            try:
                query = update(Starship).where(Starship.id == starship_id).values(**starship) 
                connection.execute(query)
                connection.commit()
            except Exception as e:
                connection.rollback()
                logging.error(f"Error updating starship with id {starship_id}: {e}", exc_info=True)


    def insert(self, starship_data):
        with self.engine.begin() as connection:
            try:
                query = insert(Starship).values(starship_data) 
                result = connection.execute(query)
                connection.commit()
                logging.info(f"Inserted starship: {starship_data.get('name')} with ID: {result.inserted_primary_key[0]}")
                return result.inserted_primary_key[0]
            except Exception as e:
                connection.rollback()
                logging.error(f"Failed to insert starship: {starship_data}. Error: {e}", exc_info=True)
                return None 

