import logging

def configure_logging(log_level=logging.INFO, log_filename='app.log'):
    """Configures the logging system."""

    logging.basicConfig(level=log_level,  
                        filename=log_filename,
                        filemode='w',  # Overwrite the log file ('a' for append)
                        format='%(asctime)s - %(levelname)s - %(filename)s - %(lineno)d - %(message)s')
