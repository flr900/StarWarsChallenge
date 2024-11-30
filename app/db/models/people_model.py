from ..db import Base
from app.db.models.people_starships_model import PeopleStarships
from app.db.models.people_vehicles_model import PeopleVehicles
from sqlalchemy import Column, Integer, String
from sqlalchemy.sql import func
from sqlalchemy.orm import relationship

from app.db.models.film_people_model import PeopleFilms


class People(Base):
    __tablename__ = 'people'

    # Definindo as colunas do modelo
    id = Column(Integer, primary_key=True, autoincrement=True)
    name = Column(String(255), nullable=False)
    birth_year = Column(String(50))
    eye_color = Column(String(50))
    gender = Column(String(50))
    hair_color = Column(String(50))
    height = Column(Integer)
    mass = Column(Integer)
    skin_color = Column(String(50))
    homeworld = Column(String(255))
    url = Column(String(255))
    created = Column(String)
    edited = Column(String)
    updatedAt = Column(String, default=func.now())

    # films = relationship("Film", secondary=PeopleFilms.__table__, back_populates="people")
    # vehicles = relationship("Vehicle", secondary=PeopleVehicles.__table__,back_populates="people")
    # starships = relationship("Starship", secondary=PeopleStarships.__table__,back_populates="people")
