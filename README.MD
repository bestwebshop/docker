# THIS FOLDER CONTAINS THE DOCKER IMAGES THAT WILL DOWNLOAD SOURCE CODE FROM OTHER REPOS ON THEIR BUILD

Only these docker files should be cloned directly on the host. The other source code should only exist inside the containers (and inside the repo)

# Installation
```mkdir -p /work/ && cd /work/ && git clone https://github.com/bestwebshop/docker.git && cd docker && docker-compose up -d```

# Updating
on change of any source code file, use following command to update/recreate the server

```cd /work/docker && git pull && docker image prune --force && docker-compose up -d```