# Go HTTP Server

This Golang project is a hands-on exploration of essential HTTP server concepts, without relying on external REST frameworks.

## Features to be explored

- **Routing Techniques:** Route patterns, parameters, and wildcard matching.

- **Middleware Chains:** Chaining middlewares for request processing.

- **Error Handling:** Implement error handling strategies.

- **Security Considerations:** Investigate best practices for securing your HTTP server.


## Usage

### Local Development

Run the following command to tidy up Go modules and start the application locally:

```bash
make dev
``` 

### Dockerized Deployment

Build the Docker image, run the container, or stop the container using the following commands:
Or you run using a container:

```bash
# Build Docker Image
make build-image

# Run Docker Container (Exposing Port 3000)
make start-container

# Stop Docker Container
make stop-container
``` 

