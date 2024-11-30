from ..db import Base
from sqlalchemy import Column, Integer, ForeignKey

class StarshipsFilms(Base):
    __tablename__ = 'starships_films'

    starship_id = Column(Integer, ForeignKey('starships.id'), primary_key=True)
    film_id = Column(Integer, ForeignKey('films.id'), primary_key=True)
