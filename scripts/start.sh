#!/bin/bash

# Start of script

# NOTE: This script relies on `pipenv run` instead of `pipenv shell` to avoid spawning a new subshell

# The start script will:
# 1. Apply environment variables
# 2. Initialize environment variables
# 3. Install dependencies
# 4. Run the initial database migrations

echo ""
echo "Initializing the Django Data Relay..."
echo ""

# 1. Apply environment variables
# `Pipenv` handles printing the output for this step
pipenv install
echo ""

# 2. Run the database migrations
# `Pipenv` handles printing the output for this step
pipenv run python base/manage.py migrate
echo ""

# 3. Launch the secure development server
echo "Launching the Django Data Relay..."
echo ""
# `Pipenv` handles printing the output for this step
pipenv run python base/manage.py runserver_plus --cert-file base/cert.pem --key-file base/key.pem

# End of script

