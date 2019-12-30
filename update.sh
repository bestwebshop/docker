cd /work/docker 
&& git pull && docker-compose down 
&& docker rmi --force $(for s in  $(ls services); do echo -n "docker_$s "; done) $(docker images --filter "dangling=true" -q --no-trunc) 
&& docker image prune --force 
&& docker-compose up -d --remove-orphans