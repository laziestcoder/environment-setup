#!/bin/bash

# Function to check if a directory is a git repository
is_git_repo() {
  git rev-parse --is-inside-work-tree > /dev/null 2>&1
}

# Define the color for the directory name (blue)
BLUE=`tput setaf 4 bold`
NC=`tput setaf 7 bold` # No color

# Loop through each directory in the current directory
for dir in */; do
  if [ -d "$dir" ]; then
    cd "$dir"
    
    if is_git_repo; then
      # Remove trailing slash from $dir
      dir_name=${dir%/}
      echo "${NC}Running 'git pull' in ${BLUE}$dir_name${NC}"
      git pull
      echo
    fi
    
    cd ..
  fi
done

echo "Finished pulling all repositories."
