import logging
import re
from datetime import datetime
from decimal import Decimal, ROUND_DOWN

class Transformer:  # Classe base de transformer
    def __init__(self):
        pass 
    
    # Trata string de timestamp e retorna data formatada
    def parse_timestamp(self, timestamp):
        if isinstance(timestamp, str):
            try:
                dt_object = datetime.strptime(timestamp[:-1], "%Y-%m-%dT%H:%M:%S.%f")
                dt_object = dt_object.replace(microsecond=0)
                return dt_object  
            except ValueError: 
                logging.error(f"Invalid timestamp format: {timestamp}", exc_info=True) 
                return None 

        elif isinstance(timestamp, datetime):
            return timestamp
        else:
            logging.error(f"Invalid timestamp type: {type(timestamp)}", exc_info=True)
            return None  

    # Converte string para int
    def parse_int(self, value):
        try:
            return int(value)
        except (ValueError, TypeError): 
            return None
        
    # Formata a data
    def parse_date(self, date):
        if isinstance(date, str):
            try:
                dt_object = datetime.strptime(date, "%Y-%m-%d")
                return dt_object  
            except ValueError: 
                logging.error(f"Invalid date format: {date}", exc_info=True) 
                return None 

        elif isinstance(date, datetime):
            return date
        else:
            logging.error(f"Invalid date type: {type(date)}", exc_info=True)
            return None  
        
    def parse_float(self, value):
        try:
            return float(value)
        except (ValueError, TypeError):
            return None 
    def parse_percentage(self, value):
        percentage_value = int(value[:-1])  
        return percentage_value 
        
    def parse_string_to_int(self, number_string):
        match = re.search(r"\$?(\d+(?:,\d+)*)", number_string) # $ is optional.
        if match:
            number = int(match.group(1).replace(",", ""))
        else:
            raise ValueError("Input cannot be converted to int")
        return number