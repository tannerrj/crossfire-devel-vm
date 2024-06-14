#!/bin/bash

# Function to check if the last command was successful
check_success() {
    if [ $? -ne 0 ]; then
        echo "Error: $1 failed."
        exit 1
    fi
}

# Navigate to the crossfire-crossfire-server directory and pull the latest changes
cd crossfire-crossfire-server/
check_success "Changing directory to crossfire-crossfire-server"
git pull
check_success "Pulling latest changes from crossfire-crossfire-server repository"

# Navigate to the crossfire-crossfire-arch directory and pull the latest changes
cd ../crossfire-crossfire-arch/
check_success "Changing directory to crossfire-crossfire-arch"
git pull
check_success "Pulling latest changes from crossfire-crossfire-arch repository"

# Navigate to the crossfire-crossfire-maps directory and pull the latest changes
cd ../crossfire-crossfire-maps/
check_success "Changing directory to crossfire-crossfire-maps"
git pull
check_success "Pulling latest changes from crossfire-crossfire-maps repository"

# Success message
echo "All repositories have been successfully updated."
