from ..db import Base
from app.db.models.people_starships_model import PeopleStarships
from sqlalchemy import BigInteger, Column, Integer, String, Float, DateTime, ForeignKey
from sqlalchemy.orm import relationship

from app.db.models.film_starships_model import StarshipsFilms


class Starship(Base):
    __tablename__ = 'starships'

    id = Column(Integer, primary_key=True, autoincrement=True)  # AI handled by autoincrement=True
    name = Column(String(255))
    model = Column(String(255))
    starship_class = Column(String(50))
    manufacturer = Column(String(255))
    passengers = Column(Integer)
    max_atmosphering_speed = Column(Integer)
    hyperdrive_rating = Column(Float)
    MGLT = Column(Float)
    cargo_capacity = Column(BigInteger)
    consumables = Column(String(50))
    created = Column(DateTime)
    edited = Column(DateTime)
    url = Column(String(255)) 
    crew = Column(String(50))
    cost_in_credits = Column(BigInteger) 
    length = Column(Float)

    # films = relationship("Film", secondary=StarshipsFilms.__table__, back_populates="starships")
    # people = relationship("People", secondary=PeopleStarships.__table__, back_populates="starships")