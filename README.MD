# THIS FOLDER CONTAINS THE DOCKER IMAGES THAT WILL DOWNLOAD SOURCE CODE FROM OTHER REPOS ON THEIR BUILD

Only these docker files should be cloned directly on the host. The other source code should only exist inside the containers (and inside the repo)

# Usage
## Installation
```mkdir -p /work/ && cd /work/ && git clone https://github.com/bestwebshop/docker.git && cd docker && docker-compose up -d```

## Updating
on change of any source code file, use following command to update/recreate the server (tip: paste this into a `on_change.sh` file)

```cd /work/docker && git pull && docker-compose down && docker rmi --force $(cat docker_images.txt) $(docker images --filter “dangling=true” -q --no-trunc) && docker image prune --force && docker-compose up -d --remove-orphans```

## Stopping the Server

```cd /work/docker && docker-compose down```

# Contributing
Please note that the file docker_images.txt should contain the names of all docker images that will be created through docker compose (seperated by spaces).
