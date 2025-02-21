#!/bin/bash

# Start of script

# NOTE: This script relies on `pipenv run` instead of `pipenv shell` to avoid spawning a new subshell

# The start script will:
# 1. Apply environment variables
# 2. Apply database migrations
# 3. Launch a secure development server

echo ""
echo "Initializing..."
echo ""

# 1. Apply environment variables
echo "Configuring environment..."
echo ""
pipenv install
# `Pipenv` adds output
echo ""

# 2. Apply database migrations
echo "Applying database migrations..."
echo ""
pipenv run python base/manage.py migrate
# `Pipenv` adds output
echo ""

# 3. Launch the secure development server
echo "Launching the secure development server..."
echo ""
pipenv run python base/manage.py runserver_plus --cert-file env/cert.pem --key-file env/key.pem
# `Pipenv` adds output

# End of script

