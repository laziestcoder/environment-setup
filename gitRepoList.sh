#!/bin/bash

# Replace with the GitHub username you want to fetch repositories for
#GITHUB_USER="towfiq-bK"

# Replace with your GitHub Personal Access Token
GITHUB_TOKEN="<token>"

# Fetch the list of repositories for the user using GitHub API with authentication
# The API returns paginated results, so we need to handle multiple pages if there are many repositories
PAGE=1
PER_PAGE=100

while true; do
  RESPONSE=$(curl -s -H "Authorization: token $GITHUB_TOKEN" "https://api.github.com/user/repos?page=$PAGE&per_page=$PER_PAGE")

  # Check if the response is empty, indicating no more pages
  if [ "$(echo "$RESPONSE" | jq '. | length')" -eq "0" ]; then
    break
  fi

  # Extract and print the repository names
  echo "$RESPONSE" | jq -r '.[].name'

  # Increment page number
  PAGE=$((PAGE + 1))
done

