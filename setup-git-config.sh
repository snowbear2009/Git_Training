#!/bin/bash

# Run this via bash setup-git-config.sh

echo "Setting Git configuration for project workflow..."

# Enforce merge commits (no fast-forward) as per assignment requirements
git config --local merge.ff false
git config --local pull.ff false

# Change this to your own username and email
git config --local user.name "shng0808"
git config --local user.email "shng0808@uni.sydney.edu.au.com"

echo "Done! Fast-forward merges are now disabled for this repo."