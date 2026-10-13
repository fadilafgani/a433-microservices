#!/bin/bash

# Menghentikan script jika ada perintah yang gagal
set -e

# Menentukan nama image dan username Docker Hub
IMAGE_NAME="item-app"
DOCKER_USERNAME="afgani73"

# Membangun image aplikasi
docker build -t "${IMAGE_NAME}:latest" .

# Menampilkan daftar image lokal
docker images

# Memberikan tag image untuk repository Docker Hub
docker tag "${IMAGE_NAME}:latest" "${DOCKER_USERNAME}/${IMAGE_NAME}:latest"

# Login ke Docker Hub
docker login

# Mengunggah image ke Docker Hub
docker push "${DOCKER_USERNAME}/${IMAGE_NAME}:latest"