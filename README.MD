# this repo contains the docker images which are used to download and install the micro services from the other repos

Only this repo with the docker files should be cloned directly on the host. The other source code should only exist inside the containers (and inside their repos on github)

# Usage
## Installation
```mkdir -p /work/ && cd /work/ && git clone https://github.com/bestwebshop/docker.git && cd docker && docker-compose up -d```

## Updating
on change of any source code file, run `./update.sh` command to update/recreate the server.

## Stopping the Server

```cd /work/docker && docker-compose down```