
import logging

from app import PeopleTransform, FilmsTransform, configure_logging,PlanetTransform,check_db_connection
from app.data_processing.species_transform import SpeciesTransform
from app.data_processing.starship_transform import StarshipTransform
from app.data_processing.vehicle_transform import VehicleTransform

configure_logging(log_level=logging.DEBUG) 

check_db_connection()

# GET PEOPLE DATA FROM API ##

# people_transform = PeopleTransform()
# bulk_load = people_transform.batch_load_people_data()
# logging.info("Updated people data successfully!")

# filme_transformation = FilmsTransform()
# bulk_load = filme_transformation.batch_load_film_data()
# logging.info("Updated film data successfully!")


planet_transform = PlanetTransform()
bulk_load = planet_transform.batch_load_data()
logging.info("Updated planet data successfully!")

# starship_transform = StarshipTransform()
# bulk_load = starship_transform.batch_load_data()
# logging.info("Updated starship data successfully!")

# Vehicle_transform = VehicleTransform()
# bulk_load = Vehicle_transform.batch_load_data()
# logging.info("Updated vehicles data successfully!")

# species_transform = SpeciesTransform()
# bulk_load = species_transform.batch_load_data()
# logging.info("Updated species data successfully!")