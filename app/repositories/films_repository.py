import logging
from ..db.db import db
from sqlalchemy import insert, select, text, update
from ..db.models.films_model import Film

class FilmRepository:
    def __init__(self):
        self.engine = db

    def bulk_insert(self, film_data):
        logging.info("Initializing bulk insert of film data...")
        with self.engine.connect() as connection:
            try:
                stmt = insert(Film).values(film_data)
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
            query = select(Film).where(Film.name == name)
            instance = connection.execute(query).scalar_one_or_none()
            if instance:
                return True
            return False
        
    def get_film(self, title):
        with self.engine.connect() as connection:
            query = select(Film).where(Film.title == title)
            person = connection.execute(query).mappings().one_or_none()
            if person:
                return person
            return None
        
    def insert(self, film_data):
        with self.engine.begin() as connection:
            try:
                query = insert(Film).values(film_data)
                result = connection.execute(query)
                connection.commit()
                logging.info(f"Inserted film: {film_data.get('title')} with ID: {result.inserted_primary_key[0]}")
                return result.inserted_primary_key[0] # Retorna o id inserido
            except Exception as e:
                connection.rollback()
                logging.error(f"Failed to insert film: {film_data}. Error: {e}", exc_info=True)
                return None 

    def update(self, film):
        logging.info(f"Updating Film: {film['title']}")
        film_id = film.pop('id')
        with self.engine.connect() as connection:
            try:
                query = update(Film).where(Film.id == film_id).values(**film)
                connection.execute(query)
                connection.commit()
            except Exception as e:
                connection.rollback()
                print(f"Error updating film with id {film_id}: {e}")


