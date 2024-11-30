import requests
import logging
import os
from dotenv import load_dotenv

load_dotenv()


class StarWarsAPI:
    def __init__(self):
        self.base_url = 'https://swapi.dev/api/'
        self.people_endpoint = 'people/'
        self.films_endpoint = 'films/'
        self.planets_endpoint = 'planets/'
        self.vehicles_endpoint = 'vehicles/'
        self.starships_endpoint = 'starships/'
        self.species_endpoint = 'species/'


    def __fetch_all_data(self, endpoint):
        logging.info(f"Fetching all data from {endpoint}...")
        url = f"{self.base_url}{endpoint}"
        all_results = []
        next_url = url
        while next_url:
            response = requests.get(next_url)
            if response.status_code == 200:
                data = response.json()
                all_results.extend(data["results"])
                next_url = data.get("next")
            else:
                logging.error(f"Error accessing {next_url}: {response.status_code}")
                break
        return all_results
    
    def fetch_data_from_url(self, endpoint):
        logging.info(f"Fetching data from {endpoint}...")
        response = requests.get(endpoint)

        if response.status_code == 200:
            logging.info(f"Request successfull for {endpoint}...")
            data = response.json()
            logging.info(f"Data parsed as json...")
            return data
        else:
            logging.error(f"Error accessing {endpoint}: {response.status_code}")
            return None
        
    def get_people_data(self):
        logging.info(f"Initialize fetch of people data from API...")
        return self.__fetch_all_data(self.people_endpoint)
    
    def get_films_data(self):
        logging.info(f"Initialize fetch of films data from API...")
        return self.__fetch_all_data(self.films_endpoint)
    
    def get_planets_data(self):
        logging.info(f"Initialize fetch of planets data from API...")
        return self.__fetch_all_data(self.planets_endpoint)
    
    def get_vehicles_data(self):
        logging.info(f"Initialize fetch of vehicles data from API...")
        return self.__fetch_all_data(self.vehicles_endpoint)
    
    def get_starships_data(self):
        logging.info(f"Initialize fetch of starships data from API...")
        return self.__fetch_all_data(self.starships_endpoint)
    
    def get_species_data(self):
        logging.info(f"Initialize fetch of species data from API...")
        return self.__fetch_all_data(self.species_endpoint)