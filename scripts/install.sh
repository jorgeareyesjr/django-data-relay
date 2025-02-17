#!/bin/bash

# Start of script

# NOTE: This script relies on `pipenv run` instead of `pipenv shell` to avoid spawning a new subshell

# The installation script will:
# 1. Generate a local SSL certificate for your localhost/loopback IP address
# 2. Initialize environment variables
# 3. Install dependencies
# 4. Initialize database migrations

echo ""
echo "Thank you for choosing the Django Data Relay!"
echo ""
echo "Starting installation..."
echo ""

# 1. Generate a local SSL certificate for your localhost/loopback IP address
echo "Generating local SSL certificate..."
mkcert -cert-file base/cert.pem -key-file base/key.pem localhost 127.0.0.1

# 2. Initializing environment variables
# `Pipenv` handles printing the output for this step
ENV_FILE=".env"
ENV_FILE_COMMENT="# The Django Data Relay relies on the following environment variables for it's configuration. For security purposes, DO NOT commit this file to a public repository. Instead, ensure it is included in your \`.gitignore\` file. These settings contain sensitive information and should be kept confidential.

# Be aware, if you change any of these settings, you will need to restart the Django Data Relay local server. If you are using Docker, you will need to rebuild the Docker container.
"
SECRET_KEY_TEXT="# SECURITY WARNING: keep the secret key used in production secret!
# SECURITY NOTE: use a long and complex key comprised of uppercase, lowercase, numbers, and special characters.
SECRET_KEY='A-S4MPL3-S3CR3T-K3Y-C0MPRIS3D-0F-L0NG-C4R4CT3RS'
"
DEBUG_TEXT="# SECURITY WARNING: don't run with debug turned on in production!
# SECURITY NOTE: the DEBUG setting should be set to a boolean value.
DEBUG='true'
"
ALLOWED_HOSTS_TEXT="# SECURITY WARNING: don't expose your project to malicious requests!
# SECURITY NOTE: if DEBUG is set to \`false\`, ALLOWED_HOSTS requires a value.
ALLOWED_HOSTS_LIST='localhost, 127.0.0.1, [::1]'
"
# Combine the environment variables
ENV_TEXT_TO_ADD="$ENV_FILE_COMMENT
$SECRET_KEY_TEXT
$DEBUG_TEXT
$ALLOWED_HOSTS_TEXT
"
# Write the environment variables to the .env file
echo "$ENV_TEXT_TO_ADD" > "$ENV_FILE"

# 3. Install dependencies
# `Pipenv` handles printing the output for this step
pipenv install
echo ""

# 4. Initialize database migrations
# `Pipenv` handles printing the output for this step
pipenv run python base/manage.py migrate
echo ""

echo "Installation complete!"

# End of script
