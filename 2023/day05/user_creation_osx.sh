#!/bin/bash

# Function to create a user
create_user() {
    local username="$1"
    sudo dscl . -create "/Users/$username"
    sudo dscl . -create "/Users/$username" UserShell /bin/bash
    sudo dscl . -create "/Users/$username" UniqueID "1000"
    sudo dscl . -create "/Users/$username" PrimaryGroupID "80"
    sudo dscl . -create "/Users/$username" NFSHomeDirectory "/Users/$username"
    sudo dscl . -passwd "/Users/$username" "password123"  # Change the password as needed
}

# Create User1
create_user "User1"

# Create User2
create_user "User2"

# Display Usernames
echo "User1's Username: User1"
echo "User2's Username: User2"

echo "Creating users is completed"
