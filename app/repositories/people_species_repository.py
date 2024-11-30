import logging
from ..db.db import db
from sqlalchemy import insert
from ..db.models.people_species_model import PeopleSpecies
from sqlalchemy.orm import Session


class PeopleSpeciesRepository:  # Corrected class name
    def __init__(self):
        self.engine = db

    def insert(self, person_id, species_id):  # Corrected method name
        with self.engine.begin() as connection:
            try:
                query = insert(PeopleSpecies).values(person_id=person_id, specie_id=species_id)
                connection.execute(query)
                connection.commit()
                logging.info(f"Inserted relationship: person_id={person_id}, species_id={species_id}")  # Corrected log message
            except Exception as e:
                connection.rollback()
                logging.error(f"Failed to insert person_species relationship: person_id={person_id}, species_id={species_id}. Error: {e}", exc_info=True)  # Corrected log message

