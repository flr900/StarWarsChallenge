from ..db import Base
from sqlalchemy import Column, Integer, ForeignKey

class PeopleFilms(Base):
    __tablename__ = 'people_films'

    person_id = Column(Integer, ForeignKey('people.id'), primary_key=True)
    film_id = Column(Integer, ForeignKey('films.id'), primary_key=True)
