#!/bin/bash
download_mock_server_files () {
    # Define the files and their URLs
    files=(
        "Dockerfile https://raw.githubusercontent.com/jonepl-portfolio/.github/main/shared-files/Dockerfile"
        "docker-compose.yml https://raw.githubusercontent.com/jonepl-portfolio/.github/main/shared-files/docker-compose.yml"
        "makefile https://raw.githubusercontent.com/jonepl-portfolio/.github/main/shared-files/makefile"
    )

    # Loop through each file
    for file in "${files[@]}"; do
        # Split the file name and URL
        file_name=$(echo $file | awk '{print $1}')
        file_url=$(echo $file | awk '{print $2}')

        # Check if the file does not exist in the current directory
        if [ ! -f "$file_name" ]; then
            echo "Downloading $file_name..."
            curl -L -o "$file_name" "$file_url"
        else
            echo "$file_name already exists, skipping download."
        fi
    done
}

download_repositories() {
    # List of repositories to clone
    repos=(
        "https://github.com/jonepl-portfolio/app-scripts.git"
        "https://github.com/jonepl-portfolio/web-portfolio.git"
        "https://github.com/jonepl-portfolio/csv-merger-api"
        "https://github.com/jonepl-portfolio/site-reliability-tools.git"
        "https://github.com/jonepl-portfolio/api-gateway.git"
    )

    # Clone each repository into a directory named after the repository
    for repo_url in "${repos[@]}"; do
        # Extract the repository name from the URL
        repo_name=$(basename -s .git "$repo_url")
        
        # Check if the directory already exists
        if [ ! -d "$repo_name" ]; then
            echo "Cloning $repo_name..."
            git clone "$repo_url" "$repo_name"
        else
            echo "$repo_name already exists, skipping clone."
        fi
    done
}


download_mock_server_files

download_repositories