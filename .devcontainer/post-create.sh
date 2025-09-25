#!/bin/bash

# Exit immediately if a command exits with a non-zero status.
set -e

echo "--- Starting post-create script ---"

# Install LWC Local Development Server
echo "--- Installing LWC Local Development Server ---"
npm install --global @salesforce/lwc-dev-server

echo "--- Post-create script finished successfully ---"

