import logging
from ..db.db import db
from sqlalchemy import insert
from ..db.models.film_vehicle_model import VehiclesFilms 


class FilmsVehiclesRepository: 
    def __init__(self):
        self.engine = db

    def insert(self, film_id, vehicle_id): 
        with self.engine.begin() as connection:
            try:
                query = insert(VehiclesFilms).values(film_id=film_id, vehicle_id=vehicle_id)
                connection.execute(query)
                connection.commit()
                logging.info(f"Inserted relationship: film_id={film_id}, vehicle_id={vehicle_id}")
            except Exception as e:
                connection.rollback()
                logging.error(f"Failed to insert film_vehicle relationship: film_id={film_id}, vehicle_id={vehicle_id}. Error: {e}", exc_info=True)

