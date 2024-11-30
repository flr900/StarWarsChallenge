import os
import logging
from sqlalchemy import create_engine
from sqlalchemy.ext.declarative import declarative_base
from dotenv import load_dotenv

load_dotenv()

DATABASE_URL = f"mysql+pymysql://{os.getenv('DB_USER')}:{os.getenv('DB_PASSWORD')}@{os.getenv('DB_HOST')}:{os.getenv('DB_PORT')}/{os.getenv('DB_NAME')}"

db = create_engine(DATABASE_URL, echo=True, pool_pre_ping=True)


def check_db_connection():
    try:
        with db.connect() as conn:
            logging.info("Conexão com o banco de dados bem-sucedida!")
    except Exception as e:
        logging.critical(f"Erro ao conectar ao banco de dados: {e}")
        raise ValueError(f"Erro ao conectar ao banco de dados {e}")

Base = declarative_base()

# Base.metadata.create_all(bind=db, checkfirst=True)