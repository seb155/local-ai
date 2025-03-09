#!/bin/bash

REPO_DIR="/root/local-ai"
BRANCH="main"

echo "?? Switching to repository directory: $REPO_DIR"
cd "$REPO_DIR" || { echo "? Failed to change directory"; exit 1; }

echo "?? Checking Git status..."
git status

echo "?? Staging all changes..."
git add .

echo "?? Enter commit message: "
read -r COMMIT_MSG

if [ -z "$COMMIT_MSG" ]; then
    echo "?? Commit message cannot be empty. Using default message."
    COMMIT_MSG="Auto-update: $(date)"
fi

git commit -m "$COMMIT_MSG"

echo "?? Pushing changes to GitHub..."
git pull origin "$BRANCH" --rebase && git push origin "$BRANCH"

if [ $? -eq 0 ]; then
    echo "? Successfully pushed updates to GitHub!"
else
    echo "? Push failed. Check errors and try again."
fi
