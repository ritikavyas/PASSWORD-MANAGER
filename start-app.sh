#!/bin/bash

# Script to easily start the PASSWORD-MANAGER application
echo "🔐 Setting up Password Manager..."

# Check if git repository is initialized
if [ ! -d .git ]; then
    echo "Initializing git repository..."
    git init
fi

# Check if node_modules exists, if not install dependencies
if [ ! -d node_modules ]; then
    echo "Installing dependencies..."
    npm install
fi

# Start the application
echo "Starting the application..."
echo "The application will be available at http://localhost:8085"
npx cross-env NODE_OPTIONS='--openssl-legacy-provider' npx grunt dev --force

echo "Application stopped." 