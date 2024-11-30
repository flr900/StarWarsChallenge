import logging
from ..db.db import db 
from sqlalchemy import insert
from ..db.models.film_planet_model import PlanetsFilms




class PlanetFilmRepository:
    def __init__(self):
        self.engine = db

    def insert(self, film_id, planet_id):
            with self.engine.connect() as connection: 
                logging.info(f"{film_id} | {planet_id}")
                logging.info(f"DB connection stablished")
                try:
                    query = insert(PlanetsFilms).values(film_id=film_id, planet_id=planet_id)
                    connection.execute(query)
                    logging.info(f"Inserted relationship: film_id={film_id}, planet_id={planet_id}")
                except Exception as e:
                    logging.error(f"Failed to insert film_person relationship: film_id={film_id}, planet_id={planet_id}.  Error: {e}", exc_info=True)



