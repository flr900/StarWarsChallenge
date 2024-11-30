import logging
from ..db.db import db 
from sqlalchemy import insert
from ..db.models.film_people_model import PeopleFilms


class FilmPeopleRepository:
    def __init__(self):
        self.engine = db

    def insert_film_person(self, film_id, person_id):
        with self.engine.connect() as connection: 
            try:
                query = insert(PeopleFilms).values(film_id=film_id, person_id=person_id)
                connection.execute(query)
                connection.commit()
                logging.info(f"Inserted relationship: film_id={film_id}, person_id={person_id}")
            except Exception as e:
                connection.rollback()  
                logging.error(f"Failed to insert film_person relationship: film_id={film_id}, person_id={person_id}.  Error: {e}", exc_info=True)



