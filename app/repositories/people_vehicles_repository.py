import logging
from ..db.db import db
from sqlalchemy import insert
from ..db.models.people_vehicles_model import PeopleVehicles 
from sqlalchemy.orm import Session


class PeopleVehiclesRepository:
    def __init__(self):
        self.engine = db

    def insert(self, person_id, vehicle_id):  
        with self.engine.begin() as connection:
            try:
                query = insert(PeopleVehicles).values(person_id=person_id, vehicle_id=vehicle_id)
                connection.execute(query)
                connection.commit()
                logging.info(f"Inserted relationship: person_id={person_id}, vehicle_id={vehicle_id}")
            except Exception as e:
                connection.rollback()
                logging.error(f"Failed to insert person_vehicle relationship: person_id={person_id}, vehicle_id={vehicle_id}. Error: {e}", exc_info=True)

