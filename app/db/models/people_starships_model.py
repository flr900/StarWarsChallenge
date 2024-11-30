from ..db import Base
from sqlalchemy import Column, Integer, ForeignKey

class PeopleStarships(Base):
    __tablename__ = 'starships_people'

    starship_id = Column(Integer, ForeignKey('starships.id'), primary_key=True)
    person_id = Column(Integer, ForeignKey('people.id'), primary_key=True)
