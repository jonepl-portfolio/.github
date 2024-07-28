#!/bin/bash

# List of repositories to clone
repos=(
    "https://github.com/jonepl-portfolio/app-scripts.git"
    "https://github.com/jonepl-portfolio/web-portfolio.git"
    "https://github.com/jonepl-portfolio/csv-merger-api"
    "https://github.com/jonepl-portfolio/site-reliability-tools.git"
    "https://github.com/jonepl-portfolio/api-gateway.git"
)

# Directory to clone the repositories into
clone_dir="my-portfolio"

# Create the clone directory if it doesn't exist
mkdir -p $clone_dir

# Clone each repository
for repo in "${repos[@]}"; do
    git clone $repo $clone_dir
done
