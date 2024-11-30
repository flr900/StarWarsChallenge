from ..db import Base
from sqlalchemy import Column, Integer, ForeignKey

class PlanetsFilms(Base):
    __tablename__ = 'planets_films'

    planet_id = Column(Integer, ForeignKey('planets.id'), primary_key=True)
    film_id = Column(Integer, ForeignKey('films.id'), primary_key=True)
