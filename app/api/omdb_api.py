import requests
import os
from dotenv import load_dotenv

load_dotenv()


class OMDbAPI:
    def __init__(self):
        self.api_key = os.getenv('OMDB_API_KEY')
        self.base_url = "http://www.omdbapi.com/"

    def get_movie_data(self, title, year):
        params = {
            't': title,
            'y': year,
            'apikey': self.api_key
        }
        response = requests.get(self.base_url, params=params)
        if response.status_code == 200:
            return response.json()
        else:
            raise Exception("Failed to fetch data from OMDb API")
