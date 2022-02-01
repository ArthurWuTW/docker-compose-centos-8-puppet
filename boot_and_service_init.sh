docker-compose up --build --detach

# Puppet Master
docker-compose exec puppet-master /bin/sh -c "/opt/puppetlabs/bin/puppet resource package puppetdb-termini ensure=latest"
docker-compose exec puppet-master /bin/sh -c "systemctl enable --now puppetserver"

# Postgres Db
docker-compose exec postgres-db /bin/sh -c "postgresql-setup initdb"
docker-compose exec postgres-db /root/init-postgres-config
docker-compose exec postgres-db /bin/sh -c "systemctl enable --now postgresql"
# postgres db self test
docker-compose exec postgres-db /bin/sh -c "sudo -u postgres psql -c 'SELECT version();'"
# postgres db init user and database
docker-compose exec postgres-db /root/init-postgres-user
# set time zone
docker-compose exec postgres-db /bin/sh -c "timedatectl set-timezone Asia/Taipei"

# Puppet db
docker-compose exec puppet-db /docker-entrypoint.sh

# # Puppet master
# sleep 10
# echo "puppet master signs cert"
# docker-compose exec puppet-master /puppet-sign-puppetdb-cert