from ..db import Base
from sqlalchemy import Column, Integer, ForeignKey

class SpeciesFilms(Base):
    __tablename__ = 'species_films'

    species_id = Column(Integer, ForeignKey('species.id'), primary_key=True)
    film_id = Column(Integer, ForeignKey('films.id'), primary_key=True)
