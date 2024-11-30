import logging
from ..db.db import db
from sqlalchemy import insert, select, update
from sqlalchemy.orm import Session
from ..db.models.species_model import Species  # Corrected import


class SpeciesRepository:
    def __init__(self):
        self.engine = db

    def bulk_insert(self, data):
        logging.info("Initializing bulk insert of species data...")
        with self.engine.begin() as connection:
            try:
                query = insert(Species).values(data)
                result = connection.execute(query)
                connection.commit()
                logging.info(f"Inserted {result.rowcount} species rows")
                return result.rowcount
            except Exception as e:
                connection.rollback()
                logging.critical(f"Failed to bulk insert species data: {e}", exc_info=True)
                return 0

    def get_species(self, name):
        with self.engine.begin() as connection:
            try:
                query = select(Species).where(Species.name == name)
                species = connection.execute(query).mappings().one_or_none()
                return species
            except Exception as e:
                logging.error(f"Error retrieving species by name: {name}. Error: {e}", exc_info=True)
                return None

    def get_by_url(self, url):
        with self.engine.begin() as connection:
            try:
                query = select(Species).where(Species.url == url)
                species = connection.execute(query).mappings().one_or_none()
                return species
            except Exception as e:
                logging.error(f"Error retrieving species by url: {url}. Error: {e}", exc_info=True)
                return None

    def update(self, species):
        logging.info(f"Updating species with name: {species['name']}")
        species_id = species.pop('id')
        with self.engine.begin() as connection:
            try:
                query = update(Species).where(Species.id == species_id).values(**species)
                connection.execute(query)
                connection.commit()
            except Exception as e:
                connection.rollback()
                logging.error(f"Error updating species with id {species_id}: {e}", exc_info=True)

    def insert(self, species_data):
        with self.engine.begin() as connection:
            try:
                query = insert(Species).values(species_data)
                result = connection.execute(query)
                connection.commit()
                logging.info(f"Inserted species: {species_data.get('name')} with ID: {result.inserted_primary_key[0]}")
                return result.inserted_primary_key[0]
            except Exception as e:
                connection.rollback()
                logging.error(f"Failed to insert species: {species_data}. Error: {e}", exc_info=True)
                return None

