

### `docker-cheatsheet.md`


# 🐳 Docker Cheat Sheet

## What is Docker?

Docker is an open-source platform designed to automate the deployment, scaling, and management of applications using **containerization**. Containers allow developers to package an application with all its dependencies into a single unit that can run consistently across different environments.

---

## 📦 Key Concepts

| Term          | Description                                                                 |
|---------------|-----------------------------------------------------------------------------|
| **Image**     | A lightweight, standalone, and executable software package that includes everything needed to run a piece of software (code, runtime, libraries). |
| **Container** | A runtime instance of an image. Containers are isolated and portable.        |
| **Dockerfile**| A text file that contains instructions to build a Docker image.             |
| **Docker Hub**| A cloud-based registry service for sharing Docker images.                  |

---

## 🚀 Basic Commands

### 📁 Image Commands
```bash
# Build an image from a Dockerfile
docker build -t my-image-name .

# List local images
docker images

# Remove an image
docker rmi image-name
````

### 📦 Container Commands

```bash
# Run a container from an image
docker run -d -p 8080:80 --name my-container my-image

# List running containers
docker ps

# Stop a container
docker stop container-name

# Remove a container
docker rm container-name
```

---

## 🛠️ Dockerfile Example

```Dockerfile
# Use official Node.js image as base
FROM node:18

# Set working directory
WORKDIR /app

# Copy dependencies
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy app source code
COPY . .

# Expose port
EXPOSE 3000

# Run app
CMD ["node", "index.js"]
```

---

## 🐙 Docker Compose

A tool to define and run multi-container applications using a YAML file.

### Example: `docker-compose.yml`

```yaml
version: '3'
services:
  web:
    build: .
    ports:
      - "3000:3000"
  db:
    image: mongo
    ports:
      - "27017:27017"
```

Run with:

```bash
docker-compose up
```

---

## 📁 Volumes

```bash
# Create a volume
docker volume create my-volume

# Run a container with a volume
docker run -v my-volume:/data my-image
```

---

## 🧠 Tips

* Use `.dockerignore` to exclude files from being copied to the image.
* Use multi-stage builds to reduce image size.
* Keep containers stateless—use volumes for persistent data.

---

## 📚 Resources

* [Docker Docs](https://docs.docker.com)
* [Docker Hub](https://hub.docker.com)
* [Play With Docker](https://labs.play-with-docker.com)

```

Would you like me to generate and download this `.md` file for you?
```
