docker-compose up --build --detach
docker-compose exec puppet-master /bin/sh -c "service puppetserver start"
