docker-compose up --build --detach

# Postgres Db
docker-compose exec postgres-db /root/init-postgres-config
docker-compose exec postgres-db /root/init-postgres-user

# Puppet server & Puppet db
docker-compose exec puppet-db /root/start-puppetserver-puppetdb
