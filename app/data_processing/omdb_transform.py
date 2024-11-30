import logging
from ..api import OMDbAPI
from .transformer import Transformer

class OmdbTransformer(Transformer):
    def __init__(self):
        super().__init__()
        self.api = OMDbAPI()

    def fetch_data(self, title, year):
        logging.info(f"Getting omdb data for {title}...")
        try:
            data = self.api.get_movie_data(title, year)
            logging.info(f"Omdb data retrived ...")
        except Exception as e:
            logging.error(f"Request failed for {e}...",exc_info=True)
        data = self.transform_data(data)
        return data
    
    def transform_data(self, data):
        logging.info(f"Starting data transformation ...")
        api_data = data.copy()

        del api_data['Title']
        del api_data['Year']
        del api_data['Released']
        del api_data['Director']
        del api_data['Actors']
        del api_data['Response']

        ratings = api_data.pop('Ratings')
        tomatoes_rating = next((item['Value'] for item in ratings if item['Source'] == 'Rotten Tomatoes'), None)
        api_data['tomatoesRating'] = self.parse_percentage(tomatoes_rating) if tomatoes_rating else None 
        api_data['imdbRating'] = self.parse_float(api_data['imdbRating'])
        api_data['imdbRating'] = int(api_data['imdbRating'] * 10)
        api_data['imdbVotes'] = self.parse_string_to_int(api_data['imdbVotes'])
        api_data['Metascore'] = self.parse_int(api_data['Metascore'])
        api_data['BoxOffice'] = self.parse_string_to_int(api_data['BoxOffice'])

        return api_data