
import logging

from .omdb_transform import OmdbTransformer

from ..api import StarWarsAPI
from datetime import datetime

from .transformer import Transformer
from .people_transform import PeopleTransform

from ..repositories.films_repository import FilmRepository
from ..repositories.people_repository import PeopleRepository
from ..repositories.people_films_repository import FilmPeopleRepository



class FilmsTransform(Transformer):
    def __init__(self):
        super().__init__()
        self.films_repository = FilmRepository()
        self.api = StarWarsAPI()
        self.omdb_transformer = OmdbTransformer()


    def batch_load_film_data(self):
        logging.info("Initializing batch load of film data...")

        rows_inserted = 0
        films_data = self.api.get_films_data()

        for film in films_data:
            logging.info(f"Initializing transform of {film['title']}...")

            characters_url = film['characters']

            film = self.transform_data(film)

            ## Busca se já existe filme no db##
            original_film_data = self.films_repository.get_film(film['episode_id'])

            # Caso já tenha registro no banco, atualiza a linha.
            if original_film_data:
                last_update = self.parse_timestamp(original_film_data['edited'])
                current_update = film['edited']

                # Caso o carregado da api tenha da de edição mais recente, atualiza a linha.
                if current_update > last_update: 
                    try:
                        logging.info(f"Updated film with name: {film['title']}")
                        omdb_data =self.omdb_transformer.fetch_data(film['title'], film['release_date'].year)
                        logging.info("Omdb data retrieved")
                        original_film_data = {**original_film_data, **omdb_data}
                        self.films_repository.update(original_film_data)
                        logging.info(f"Updated film with name: {film['title']}")

                    except Exception as e:
                        logging.error(f"Error updating film with name {film['title']}: {e}",exc_info=True)
                        continue
                else:
                    logging.info(f"film {film['title']} is already up to date.")
                    continue
            else:
                logging.info(f"New row detected for film - {film['title']}.")


                omdb_data =self.omdb_transformer.fetch_data(film['title'], film['release_date'].year)
                logging.info("Omdb data retrieved")
                film = {**film, **omdb_data}
                try:
                    logging.info(f"Initializing insert of film {film['title']} into films table...")
                    inserted_film_id = self.films_repository.insert(film)
                    rows_inserted = rows_inserted + 1       
                except Exception as e:
                    logging.critical(f"Failed to insert data into films table: {e}...",exc_info=True)
                    continue

                self.people_many_many_relation(inserted_film_id, characters_url)

        
            logging.info(f"{rows_inserted} Sucessfully rows were inserted on films table")
        

    def transform_data(self, data):
            film = data.copy()

            film.pop('characters')
            film.pop('planets')
            film.pop('starships')
            film.pop('vehicles')
            film.pop('species')

        ## Formata campos de data ##
            film['created'] = self.parse_timestamp(film['created'])
            film['edited'] = self.parse_timestamp(film['edited'])
            film['release_date'] = self.parse_date(film['release_date'])

            ## Formata campos integer ##
            film['episode_id'] = self.parse_int(film['episode_id'])

            return film

    def people_many_many_relation(self, film_id, charactes_url):
        logging.info(f"Starting insertion of people_film table...")   

        people_repository = PeopleRepository()
        people_transform = PeopleTransform()
        film_people_repository = FilmPeopleRepository()

        try:
            for url in charactes_url:
                character_data =self.api.fetch_data_from_url(url)
                db_data = people_repository.get_person(character_data['name'])

                if(db_data): 
                    logging.info(f"Inserting to people_film table -> Film:{film_id}  Person:{db_data['id']}")       
                    film_people_repository.insert_film_person(film_id, db_data['id'])     
                else:            
                    character_data = people_transform.transform_person_data(character_data)
                    character_id = people_repository.insert_people(character_data)
                    logging.info(f"Inserting to people_film table -> Film:{film_id}  Person:{character_id}")       
                    film_people_repository.insert_film_person(film_id, character_id)
        except Exception as e:
            logging.error('Failed on inserting relational data', exc_info=True)