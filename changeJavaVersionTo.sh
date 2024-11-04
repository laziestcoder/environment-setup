#!/bin/bash

# Load SDKMAN if not already loaded
if [ -s "$HOME/.sdkman/bin/sdkman-init.sh" ]; then
  source "$HOME/.sdkman/bin/sdkman-init.sh"
else
  echo "Error: SDKMAN not found!"
  exit 1
fi

# Check if an argument is provided
if [ -z "$1" ]; then
  echo "Usage: $0 <java_version>"
  exit 1
fi

# Assign the argument to a variable
JAVA_VERSION=$1

# Define the path to the .sdkmanrc file
SDKMANRC_FILE="$HOME/.sdkmanrc"

# Check if the .sdkmanrc file exists
if [ ! -f "$SDKMANRC_FILE" ]; then
  echo "Error: $SDKMANRC_FILE file not found!"
  exit 1
fi

# Use sed to comment out all java versions and activate the specified one
if [[ "$JAVA_VERSION" == "11" || "$JAVA_VERSION" == "21" ]]; then
  sed -i.bak -E "s/^java=[0-9]+\.[0-9]+\.[0-9]+-amzn/#&/; s/^#java=${JAVA_VERSION}\.0\.[0-9]+-amzn/java=${JAVA_VERSION}.0.25-amzn/" "$SDKMANRC_FILE"

  # Ensure that the correct version string is applied for both cases
  if [[ "$JAVA_VERSION" == "21" ]]; then
    sed -i.bak -E "s/java=21\.0\.[0-9]+-amzn/java=21.0.5-amzn/" "$SDKMANRC_FILE"
  elif [[ "$JAVA_VERSION" == "11" ]]; then
    sed -i.bak -E "s/java=11\.0\.[0-9]+-amzn/java=11.0.25-amzn/" "$SDKMANRC_FILE"
  fi

  echo "Java version set to $JAVA_VERSION in $SDKMANRC_FILE"

  # Run 'sdk env install' to apply the changes
  sdk env install

  # Activate the installed Java version
  sdk default java "${JAVA_VERSION}.0.$([[ "$JAVA_VERSION" == "21" ]] && echo "5" || echo "25")-amzn"

  # Print the current javac version
  echo "Current Java Compiler Version:"
  javac --version

  echo "Environment updated with 'sdk env install' and 'sdk use java'"
else
  echo "Error: Unsupported Java version. Only '11' or '21' are allowed."
  exit 1
fi

