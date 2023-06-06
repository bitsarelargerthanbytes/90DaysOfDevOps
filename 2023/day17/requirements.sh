#!/bin/bash

# Create a directory for the Python Docker project
mkdir -p ~/python-docker

# Navigate to the Python Docker project directory
cd ~/python-docker

# Create a virtual environment
python3 -m venv .venv

# Activate the virtual environment
source .venv/bin/activate

# Install Flask inside the virtual environment
python3 -m pip install Flask

# Freeze the Python dependencies to a requirements.txt file
python3 -m pip freeze > requirements.txt

# Create an empty app.py file
touch app.py