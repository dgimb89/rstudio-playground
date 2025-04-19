[![Docker Build and Push](https://github.com/dgimb89/rstudio-playground/actions/workflows/docker-build.yml/badge.svg)](https://github.com/dgimb89/rstudio-playground/actions/workflows/docker-build.yml)

# RStudio Playground

This project provides a template RStudio development environment using Docker. It's designed to help you get started with R development quickly.

## Quick Start

To start the RStudio server:

```bash
make start
```

This will:
1. Start the RStudio server in a Docker container
2. Open your default browser to http://localhost:8787

> **Note:** The RStudio server is only accessible from localhost (127.0.0.1) for security reasons.

To stop the server:
```bash
make stop
```

### Install dependencies / packages

1. **System dependencies**: Edit `Aptfile` to add system packages
2. **R packages**: Edit `packages.R` to add R packages

After modifying either file, run:
```bash
make rebuild
```
This will rebuild the container with new dependencies while preserving your workspace data.

## Project Structure

- `workspace/` - Directory for your R scripts and analysis files
- `data/` - Directory for input data files
- `packages.R` - Defines R package dependencies
- `Aptfile` - Defines system-level dependencies
- `Dockerfile` - Container configuration
- `docker-compose.yml` - Container orchestration

## References

- [Rocker Project Documentation](https://rocker-project.org/images/versioned/rstudio.html) - Official documentation for Rocker Project's RStudio images
- [Rocker RStudio Docker Image](https://hub.docker.com/r/rocker/rstudio) - Official Docker Hub repository for Rocker RStudio image
- [Running RStudio Server with Docker](https://davetang.org/muse/2021/04/24/running-rstudio-server-with-docker/) - Blog post with detailed instructions on setting up RStudio Server with Docker
