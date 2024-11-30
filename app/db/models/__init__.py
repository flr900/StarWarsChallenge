# db/models/__init__.py
from sqlalchemy.ext.declarative import declarative_base
Base = declarative_base()

from .film_people_model import PeopleFilms #Import the relational model
from .films_model import Film #Import Film model
from .people_model import People #Import people model
