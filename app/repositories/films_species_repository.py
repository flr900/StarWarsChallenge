import logging
from ..db.db import db
from sqlalchemy import insert, select
from ..db.models.film_species_model import SpeciesFilms #Corrected import
from sqlalchemy.orm import Session


class FilmsSpeciesRepository:
    def __init__(self):
        self.engine = db

    def insert(self, film_id, species_id):
        with self.engine.begin() as connection:
            try:
                query = insert(SpeciesFilms).values(film_id=film_id, species_id=species_id)
                connection.execute(query)
                connection.commit()
                logging.info(f"Inserted relationship: film_id={film_id}, species_id={species_id}")
            except Exception as e:
                connection.rollback()
                logging.error(f"Failed to insert film_species relationship: film_id={film_id}, species_id={species_id}. Error: {e}", exc_info=True)

    def get_species_by_film(self, film_id):
        with self.engine.begin() as connection:
            try:
                query = select(SpeciesFilms.species_id).where(SpeciesFilms.film_id == film_id)
                result = connection.execute(query).fetchall()
                species_ids = [row[0] for row in result]
                return species_ids
            except Exception as e:
                logging.error(f"Failed to retrieve species for film_id={film_id}. Error: {e}", exc_info=True)
                return [] #Return an empty list instead of None

