#!/bin/bash

# Start of script

# NOTE: This script relies on `pipenv run` instead of `pipenv shell` to avoid spawning a new subshell

# The installation script will:
# 1. Create an `env` directory
# 2. Initialize environment variables
# 3. Generate a local SSL certificate for your localhost/loopback IP address
# 4. Install dependencies
# 5. Apply initial database migrations

echo ""
echo "Starting installation..."
echo ""

# 1. Create an `env` directory
# DO NOT commit the `.env` file to a public repository, instead, add it to your `.gitignore` file.
echo "Configuring environment..."
echo ""
mkdir -p env

# 2. Initializing environment variables
ENV_FILE="env/.env"
ENV_FILE_COMMENT="# The environment variables in this file are required to properly configure the Django Data Relay.
# For security purposes, DO NOT commit this file to a public repository, instead, ensure it is included in your \`.gitignore\` file.
# These settings contain sensitive information and should be kept confidential.
# Be aware, if you change any of these settings, you will need to restart the Django Data Relay's local server.
# If you are using Docker, you will need to rebuild the Docker container.

# Deployment checklist:
# https://docs.djangoproject.com/en/5.1/howto/deployment/checklist/
"
SECRET_KEY_BLOCK="# SECURITY WARNING: keep the secret key used in production secret!
# SECURITY NOTE: use a long and complex key comprised of uppercase, lowercase, numbers, and special characters.
SECRET_KEY='A-S4MPL3-S3CR3T-K3Y-C0MPRIS3D-0F-L0NG-C4R4CT3RS'
"
DEBUG_BLOCK="# SECURITY WARNING: don't run with debug turned on in production!
# SECURITY NOTE: the DEBUG setting should be set to a boolean value.
DEBUG_KEY='true'
"
ALLOWED_HOSTS_BLOCK="# SECURITY WARNING: don't expose your project to malicious requests!
# SECURITY NOTE: if DEBUG is set to \`false\`, ALLOWED_HOSTS requires a value.
ALLOWED_HOSTS='localhost, 127.0.0.1, [::1]'
"
CSRF_COOKIE_SECURE_BLOCK="# SECURITY WARNING: don't let the CSRF cookie travel across insecure connections!
# SECURITY NOTE: the CSRF_COOKIE_SECURE should be set to a boolean value.
CSRF_COOKIE_SECURE = 'true'
"
SESSION_COOKIE_SECURE_BLOCK="# SECURITY WARNING: don't let the session cookie travel across insecure connections!
# SECURITY NOTE: the SESSION_COOKIE_SECURE should be set to a boolean value.
SESSION_COOKIE_SECURE = 'true'
"
SECURE_HSTS_SECONDS_BLOCK="# SECURITY WARNING: don't let the browser make insecure connections!
# SECURITY NOTE: Subsequent visits "reset" the browser's HSTS header to the latest policy.
SECURE_HSTS_SECONDS = '31536000' # 1 year.
"
SECURE_SSL_REDIRECT_BLOCK="# SECURITY WARNING: don't let connections redirect away from HTTPS.
# SECURITY NOTE: if SECURE_SSL_REDIRECT is set to \`true\`, HTTP connections are permanently redirected to HTTPS.
SECURE_SSL_REDIRECT = 'true'
"

# Combine the environment variable blocks
ENV_TEXT_TO_ADD="$ENV_FILE_COMMENT
$SECRET_KEY_BLOCK
$DEBUG_BLOCK
$ALLOWED_HOSTS_BLOCK
$CSRF_COOKIE_SECURE_BLOCK
$SESSION_COOKIE_SECURE_BLOCK
$SECURE_HSTS_SECONDS_BLOCK
$SECURE_SSL_REDIRECT_BLOCK"

# Write the environment variable blocks to the `.env` file
echo "$ENV_TEXT_TO_ADD" > "$ENV_FILE"

# 2. Generate a local SSL certificate for your localhost/loopback IP address
echo "Generating local SSL certificate..."
mkcert -cert-file env/cert.pem -key-file env/key.pem localhost 127.0.0.1
# `mkcert` adds output

# 3. Install dependencies
echo "Installing required packages..."
echo ""
pipenv install
# `Pipenv` adds output
echo ""

# 4. Apply initial database migrations
echo "Applying initial database migrations..."
echo ""
pipenv run python base/manage.py migrate
# `Pipenv` adds output
echo ""

echo "Installation complete!"

# End of script
