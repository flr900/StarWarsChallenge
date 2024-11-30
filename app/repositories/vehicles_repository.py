import logging
from ..db.db import db
from sqlalchemy import insert, select, update
from sqlalchemy.orm import Session
from ..db.models.vehicles_model import Vehicle  # Corrected import


class VehicleRepository:  # Corrected class name
    def __init__(self):
        self.engine = db

    def bulk_insert(self, data):
        logging.info("Initializing bulk insert of vehicle data...")
        with self.engine.begin() as connection:
            try:
                query = insert(Vehicle).values(data)
                result = connection.execute(query)
                connection.commit()
                logging.info(f"Inserted {result.rowcount} vehicle rows")
                return result.rowcount
            except Exception as e:
                connection.rollback()
                logging.critical(f"Failed to bulk insert vehicle data: {e}", exc_info=True)
                return 0

    def get_vehicle(self, name):
        with self.engine.begin() as connection:
            try:
                query = select(Vehicle).where(Vehicle.name == name)
                vehicle = connection.execute(query).mappings().one_or_none()
                return vehicle
            except Exception as e:
                logging.error(f"Error retrieving vehicle by name: {name}. Error: {e}", exc_info=True)
                return None

    def get_by_url(self, url):
        with self.engine.begin() as connection:
            try:
                query = select(Vehicle).where(Vehicle.url == url)
                vehicle = connection.execute(query).mappings().one_or_none()
                return vehicle
            except Exception as e:
                logging.error(f"Error retrieving vehicle by url: {url}. Error: {e}", exc_info=True)
                return None

    def update(self, vehicle):
        logging.info(f"Updating vehicle with name: {vehicle['name']}")
        vehicle_id = vehicle.pop('id')
        with self.engine.begin() as connection:
            try:
                query = update(Vehicle).where(Vehicle.id == vehicle_id).values(**vehicle)
                connection.execute(query)
                connection.commit()
            except Exception as e:
                connection.rollback()
                logging.error(f"Error updating vehicle with id {vehicle_id}: {e}", exc_info=True)

    def insert(self, vehicle_data):
        with self.engine.begin() as connection:
            try:
                query = insert(Vehicle).values(vehicle_data)
                result = connection.execute(query)
                connection.commit()
                logging.info(f"Inserted vehicle: {vehicle_data.get('name')} with ID: {result.inserted_primary_key[0]}")
                return result.inserted_primary_key[0]
            except Exception as e:
                connection.rollback()
                logging.error(f"Failed to insert vehicle: {vehicle_data}. Error: {e}", exc_info=True)
                return None

