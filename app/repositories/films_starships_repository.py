import logging
from ..db.db import db
from sqlalchemy import insert
from ..db.models.film_starships_model import StarshipsFilms 
from sqlalchemy.orm import Session


class FilmsStarshipsRepository:  
    def __init__(self):
        self.engine = db

    def insert(self, film_id, starship_id):
        with self.engine.begin() as connection:
            try:
                query = insert(StarshipsFilms).values(film_id=film_id, starship_id=starship_id)
                connection.execute(query)
                connection.commit()
                logging.info(f"Inserted relationship: film_id={film_id}, starship_id={starship_id}")
            except Exception as e:
                connection.rollback()
                logging.error(f"Failed to insert film_starship relationship: film_id={film_id}, starship_id={starship_id}. Error: {e}", exc_info=True)

