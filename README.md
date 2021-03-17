# Overlinking

## Ruby version: 2.7.2

## Dependencies
  * Git
  * Docker
  * Docker-compose

## Running the project
  * Clone the repository
  * Enter in the app directory:  
    ```bash
    cd overlinking
    ```
  * Initializing services:
    ```bash
    docker-compose up -d
    ```
  * Initializing database:
    ```bash
    docker-compose exec web rails db:create
    ```
  * Database migration:
    ```bash
    docker-compose exec web rails db:migrate
    ```
