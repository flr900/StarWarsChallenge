from ..db import Base
from sqlalchemy import Column, Integer, ForeignKey

class PeopleVehicles(Base):
    __tablename__ = 'vehicles_people'

    vehicle_id = Column(Integer, ForeignKey('vehicles.id'), primary_key=True)
    person_id = Column(Integer, ForeignKey('people.id'), primary_key=True)
