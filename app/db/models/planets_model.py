from ..db import Base
from.film_planet_model import PlanetsFilms
from sqlalchemy.orm import relationship
from sqlalchemy import Column, Integer, String, Float, DateTime, BigInteger


class Planet(Base):
    __tablename__ = 'planets'

    id = Column(Integer, primary_key=True)
    name = Column(String, nullable=False)
    rotation_period = Column(Integer)
    orbital_period = Column(Integer)
    diameter = Column(Integer)
    climate = Column(String)
    gravity = Column(String)
    terrain = Column(String)
    surface_water = Column(Float)
    population = Column(BigInteger)
    created = Column(DateTime)
    edited = Column(DateTime)
    url = Column(String)

    # films = relationship("Film", secondary=PlanetsFilms.__table__, back_populates="planets")