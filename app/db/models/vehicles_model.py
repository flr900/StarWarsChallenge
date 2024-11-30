from ..db import Base
from app.db.models.people_vehicles_model import PeopleVehicles
from app.db.models.film_vehicle_model import VehiclesFilms
from sqlalchemy import Column, Integer, String, Float, DateTime, ForeignKey
from sqlalchemy.orm import relationship

class Vehicle(Base):
    __tablename__ = 'vehicles'

    id = Column(Integer, primary_key=True)
    name = Column(String, nullable=False)
    model = Column(String)
    manufacturer = Column(String)
    cost_in_credits = Column(Integer)
    length = Column(Float)
    max_atmosphering_speed = Column(Integer)
    crew = Column(Integer)
    passengers = Column(Integer)
    cargo_capacity = Column(Integer)
    consumables = Column(String)
    vehicle_class = Column(String)
    created = Column(DateTime)
    edited = Column(DateTime)
    url = Column(String)

    # people = relationship("People", secondary=PeopleVehicles.__table__, back_populates="vehicles")
    # films = relationship("Film", secondary=VehiclesFilms.__table__, back_populates="vehicles")