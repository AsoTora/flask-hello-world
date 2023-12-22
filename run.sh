# This script will run the flask app with given variables
# It is not used to start flask from the docker container - See Dockerfile
export FLASK_APP=src.app
export FLASK_ENV=development
export FLASK_RUN_HOST=0.0.0.0
export FLASK_RUN_PORT=8081
flask run