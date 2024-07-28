# Web Portfolio

This GitHub Organization has been created to organize and share my web portfolio and relevant applications using a microservice architecture with Docker Swarm.

## Table of Contents
- [Design](#design)
- [Features](#features)
- [Prerequisites](#prerequisites)
- [Installation](#installation)
- [Usage](#usage)
- [Contact](#contact)

# Design

![t](./imgs/Hosted-App-Overall-App.jpg)

This architecture is designed to accept requests through an Nginx reverse proxy that routes all requests through a shared Docker Swarm network. The reverse proxy utilizes TLS certificates for all domains from an internal service using a private network used by the service and the API Gateway.For application maintainability, the architecture is equipped with an integrated instance of Portainer.

## Features
- Microservice architecture using Docker Swarm
- Secure communication with TLS certificates
- Centralized management with Portainer
- Scalable and maintainable setup

## Prerequisites
- Docker
- Docker Swarm

## Installation
1. Navigate to you projects directory
    ```bash
    $ cd /your/project/directory
    ```

2. Download shared-files
    ```bash
    git clone https://github.com/jonepl-portfolio/.github.git 
    ```

3. Set up Docker Swarm:
    ```bash
    docker swarm init
    ```
3. Deploy the stack:
    ```bash
    docker stack deploy -c docker-compose.yml web-portfolio
    ```

## Usage
- Access the web portfolio at `https://yourdomain.com`
- Access Portainer at `https://yourdomain.com/portainer`
- APIs are accessible via subdomains (e.g., `https://api.yourdomain.com`)

## Contact
For questions or support, please contact [plj.coding@gmail.com](mailto:plj.coding@gmail).