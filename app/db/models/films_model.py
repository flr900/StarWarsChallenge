from ..db import Base
from sqlalchemy import BigInteger, Column, Integer, String, Date, DateTime



class Film(Base):
    __tablename__ = 'films'

    id = Column(Integer, primary_key=True, autoincrement=True)
    title = Column(String(255), nullable=False)
    episode_id = Column(Integer)
    opening_crawl = Column(String) 
    director = Column(String(255))
    producer = Column(String(255))
    release_date = Column(Date)  
    created = Column(DateTime)
    edited = Column(DateTime)
    url = Column(String(255))
    Poster = Column(String(255))  
    Metascore = Column(Integer)
    Language = Column(String(255)) 
    Website = Column(String(255)) 
    Plot = Column(String) 
    tomatoesRating = Column(Integer) 
    Country = Column(String(255)) 
    BoxOffice = Column(BigInteger)
    imdbVotes = Column(BigInteger)
    Type = Column(String(50)) 
    Writer = Column(String(255)) 
    Production = Column(String(255)) 
    imdbID = Column(String(255)) 
    Awards = Column(String) 
    Genre = Column(String(255)) 
    Rated = Column(String(50)) 
    imdbRating = Column(Integer)
    DVD = Column(String(50)) 
    Runtime = Column(String(50)) 
