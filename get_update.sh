#!/bin/bash

REPO_DIR="/root/local-ai"
BRANCH="main"

echo "?? Switching to repository directory: $REPO_DIR"
cd "$REPO_DIR" || { echo "? Failed to change directory"; exit 1; }

echo "?? Checking for updates from GitHub..."
git fetch origin "$BRANCH"

echo "?? Merging latest changes..."
git pull origin "$BRANCH"

if [ $? -eq 0 ]; then
    echo "? Successfully updated from GitHub!"
else
    echo "? Update failed. Check errors and try again."
fi
