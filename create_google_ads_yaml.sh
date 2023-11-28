#!/bin/bash

# Function to prompt for input and validate
prompt_and_validate() {
    local prompt=$1
    local var_name=$2
    local special_char=$3
    local input

    while true; do
        read -p "$prompt: " input
        if [[ "$input" =~ [$special_char] ]]; then
            echo "Invalid input: '$special_char' characters are not allowed. Please try again."
        else
            eval $var_name="'$input'"
            break
        fi
    done
}

# Prompt for variables with specific validations
prompt_and_validate "Enter customer id" customer_id "-"
prompt_and_validate "Enter client secret" client_secret "\""
prompt_and_validate "Enter client id" client_id "\""
prompt_and_validate "Enter refresh token" refresh_token "\""

# Check for developer token
read -p "Do you have a developer token? (y/n): " has_developer_token
if [ "$has_developer_token" == "y" ]; then
    prompt_and_validate "Enter developer token" developer_token "\""
else
    developer_token="Developer token missing"
fi

# Create the YAML file
{
    echo "customer_id: $customer_id"
    echo "client_secret: $client_secret"
    echo "client_id: $client_id"
    echo "refresh_token: $refresh_token"
    echo "developer_token: $developer_token"
} > google-ads.yaml

echo "google-ads.yaml file has been created."
