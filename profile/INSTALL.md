# Installation Guide

If you'd like to explore or reproduce this setup, detailed installation instructions are provided below. Note that these steps are optional and intended for developers or collaborators interested in learning more about the architecture. This project is primarily for showcasing my work and is not intended for widespread deployment.

## Table of Contents
- [Prerequisites](#prerequisites)
- [Installation](#installation)
- [Running Application](#running-application)
- [Usage](#usage)

### Prerequisites
* Git
* Curl
* Docker
* Docker Swarm

### Installation
1. Navigate to you projects directory
    ```bash
    cd /your/project/directory
    ```

2. Download setup script
    ```bash
    curl -L -o setup.sh https://raw.githubusercontent.com/jonepl-portfolio/.github/main/shared-files/setup.sh
    ```

3. Run setup script to download all repos
    ```bash
    . setup.sh
    ```

### Running Application
1. Build the mock server image
    ```bash
    make build-server
    ```
2. Start the mock service
    ```bash
    make start-server
    ```
3. Access endpoints
    ```bash
    curl https://localhost
    ```
4. destroy mock server
    ```bash
    make destroy-server
    ```

### Usage
- Access the web portfolio at `https://localhost.com`
- Access Portainer at `https://portainer.localhost.com`
- APIs are accessible via subdomains (e.g., `https://api.localhost.com`)