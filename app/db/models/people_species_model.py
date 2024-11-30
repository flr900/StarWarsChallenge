from ..db import Base
from sqlalchemy import Column, Integer, ForeignKey

class PeopleSpecies(Base):
    __tablename__ = 'species_people'

    specie_id = Column(Integer, ForeignKey('species.id'), primary_key=True)
    person_id = Column(Integer, ForeignKey('people.id'), primary_key=True)
