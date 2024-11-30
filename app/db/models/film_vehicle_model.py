from ..db import Base
from sqlalchemy import Column, Integer, ForeignKey

class VehiclesFilms(Base):
    __tablename__ = 'vehicles_films'

    vehicle_id = Column(Integer, ForeignKey('vehicles.id'), primary_key=True)
    film_id = Column(Integer, ForeignKey('films.id'), primary_key=True)
