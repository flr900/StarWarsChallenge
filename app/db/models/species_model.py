from ..db import Base # Assuming Base is defined in db.py
from app.db.models.film_species_model import SpeciesFilms
from sqlalchemy.orm import relationship
from sqlalchemy import Column, Integer, String, DateTime, Float

class Species(Base):
    __tablename__ = 'species'
    id = Column(Integer, primary_key=True, autoincrement=True)  # AI (Auto Increment) is handled by autoincrement=True
    name = Column(String(255))
    classification = Column(String(50))
    designation = Column(String(50))
    average_height = Column(Integer)
    average_lifespan = Column(Integer)
    eye_colors = Column(String(255))
    hair_colors = Column(String(255))
    skin_colors = Column(String(255))
    language = Column(String(255))
    homeworld = Column(String(255)) # Assuming homeworld is a string (could be foreign key)
    created = Column(DateTime)
    edited = Column(DateTime)
    url = Column(String(255)) # Adding unique constraint for URL

    # films = relationship("Film", secondary=SpeciesFilms.__table__, back_populates="species")