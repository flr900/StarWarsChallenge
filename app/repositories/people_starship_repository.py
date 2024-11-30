import logging
from ..db.db import db
from sqlalchemy import insert
from ..db.models.people_starships_model import PeopleStarships 
from sqlalchemy.orm import Session


class PeopleStarshipsRepository: 
    def __init__(self):
        self.engine = db

    def insert(self, person_id, starship_id):
        with self.engine.begin() as connection:
            try:
                query = insert(PeopleStarships).values(person_id=person_id, starship_id=starship_id)
                connection.execute(query)
                connection.commit()
                logging.info(f"Inserted relationship: person_id={person_id}, starship_id={starship_id}")
            except Exception as e:
                connection.rollback()
                logging.error(f"Failed to insert person_starship relationship: person_id={person_id}, starship_id={starship_id}. Error: {e}", exc_info=True)

