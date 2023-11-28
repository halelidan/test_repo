#!/bin/bash

# Function to prompt for input and validate
prompt_and_validate() {
    local prompt=$1
    local var_name=$2
    local input
    local valid

    while true; do
        read -p "$prompt: " input
        if [[ "$input" =~ [\"-] ]]; then
            echo "Invalid input: Special characters like - or "" are not allowed. Please try again."
        else
            eval $var_name="'$input'"
            break
        fi
    done
}

# Prompt for variables
prompt_and_validate "Enter account id" account_id
prompt_and_validate "Enter client secret" client_secret
prompt_and_validate "Enter client id" client_id
prompt_and_validate "Enter refresh token" refresh_token

# Check for dev token
read -p "Do you have a dev token? (y/n): " has_dev_token
if [ "$has_dev_token" == "y" ]; then
    prompt_and_validate "Enter dev token" dev_token
else
    dev_token="Please add a developer token"
fi
# Create the YAML file
{
    echo "account_id: $account_id"
    echo "client_secret: $client_secret"
    echo "client_id: $client_id"
    echo "refresh_token: $refresh_token"
    echo "dev_token: $dev_token"
} > google-ads.yaml

echo "google-ads.yaml file has been created."
