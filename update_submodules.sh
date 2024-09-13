#!/bin/bash

# Exit script if any command fails
set -e

# Update Frontend submodule
echo "Updating Frontend submodule..."
cd Frontend
git pull origin main
cd ..

# Update Backend submodule
echo "Updating Backend submodule..."
cd Backend
git pull origin main
cd ..

# Commit and push changes to the main repo if there are updates
echo "Committing and pushing changes to the main repository..."
git add .
git commit -m "Updated submodules to latest version"
git push origin main

echo "Submodules and main repository updated successfully."
