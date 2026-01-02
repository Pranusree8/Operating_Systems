#!/bin/bash

# Check if commit message is provided
if [ -z "$1" ]; then
  echo "❌ Please provide a commit message"
  echo "Usage: ./git.sh \"your commit message\""
  exit 1
fi

# Git status
echo "📌 Checking git status..."
git status

# Add all files
echo "➕ Adding files..."
git add .

# Commit
echo "💬 Committing changes..."
git commit -m "$1"

# Push to current branch
echo "🚀 Pushing to remote repository..."
git push

echo "✅ Done!"
