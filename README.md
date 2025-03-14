# nablight
Containerized php + nodejs nab app

export GITHUB_TOKEN=


docker-compose build --no-cache

docker-compose up



# Nablight

Nablight is a containerized PHP and Node.js application designed for NAB-related development.

## Prerequisites

- Docker and Docker Compose installed on your system.
- A valid GitHub token for authentication.

## Setup Instructions

Follow these steps to build and run Nablight:

### 1. Set GitHub Token

Export your GitHub token as an environment variable:

```sh
export GITHUB_TOKEN=your_github_token_here
```

> **Note:** Replace `your_github_token_here` with your actual GitHub token.

### 2. Build the Docker Containers

Run the following command to build the application without using cache:

```sh
docker-compose build --no-cache
```

### 3. Start the Application

Run the following command to start the application:

```sh
docker-compose up
```



As for testing:

I wanted to create CLI script but I decided to give you cUrl instead. 
In order to trigger php api use:

Pay in:
curl -X POST http://127.0.0.1:8000/api/ticket \
  -H "Content-Type: application/json" \
  -H "X-API-Key: your-api-key-here" \
  -d '{"amount": 150}'

Cancel (:id is coming from previous step)
curl -X DELETE http://127.0.0.1:8000/api/ticket/:id \
  -H "Content-Type: application/json" \
  -H "X-API-Key: your-api-key-here" \

I used postman to connect to both port 4000/ws and 8080/tcp where you can track what happens further.