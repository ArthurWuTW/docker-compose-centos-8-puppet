docker-compose up --build --detach

docker-compose exec puppet-master /bin/sh -c "service puppetserver start"

docker-compose exec postgres-db /bin/sh -c "postgresql-setup initdb"
docker-compose exec postgres-db /bin/sh -c "systemctl enable --now postgresql"