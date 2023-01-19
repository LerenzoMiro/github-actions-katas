#!/bin/bash
docker login ghcr.io --username "$docker_username" --password "$docker_password"
docker push "ghcr.io/$docker_username/micronaut-app:1.0-${GIT_COMMIT::8}" 
docker push "ghcr.io/$docker_username/micronaut-app:latest" &
wait
