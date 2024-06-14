#!/bin/bash

# Navigate to the crossfire-crossfire-client directory
cd crossfire-crossfire-client/
if [ $? -ne 0 ]; then
    echo "Error: Failed to change directory to crossfire-crossfire-client/"
    exit 1
fi

# Pull the latest changes from the git repository
git pull
if [ $? -ne 0 ]; then
    echo "Error: Failed to pull latest changes in crossfire-crossfire-client/"
    exit 1
fi

# Navigate to the sounds directory within crossfire-crossfire-client
cd sounds/
if [ $? -ne 0 ]; then
    echo "Error: Failed to change directory to sounds/"
    exit 1
fi

# Pull the latest changes from the git repository in the sounds directory
git pull
if [ $? -ne 0 ]; then
    echo "Error: Failed to pull latest changes in sounds/"
    exit 1
fi

echo "Successfully pulled latest changes in both directories."
