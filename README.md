# Task Overview
You are presented with a modularized FastAPI application that separates user-related routes into their own module. The application is containerized with Docker, and the root healthcheck endpoint works but the `/users` endpoint returns 404 after a recent refactor. Your task is to identify and address the missing user route in the application so all intended endpoints are active and accessible after deployment.

# Guidance
- Examine the project structure to understand how routes are registered in FastAPI.
- Consider how new route modules should be included to make their endpoints available.
- Focus only on adding or correcting what is necessary for the `/users` endpoint to function; avoid unrelated changes.
- Use provided scripts to build and run the service as intended in a production environment.

# Objectives
- Ensure that the `/users` endpoint is accessible and returns the expected user data when the service is running inside a Docker container.
- Apply a minimal fix that directly addresses the missing registration of the user routes.
- Keep the solution focused; do not add new endpoints or change existing functionality.

# How to Verify
- Build and run the service using the included scripts.
- Access `http://localhost:8000/` to verify the healthcheck endpoint responds as expected.
- Access `http://localhost:8000/users` to confirm it returns the user information successfully.
- Both endpoints should respond with the correct output, confirming all routes are active.