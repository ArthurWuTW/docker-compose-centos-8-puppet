docker-compose up --build --detach

# Postgres Db
sleep 10
docker-compose exec postgres-db /root/init-postgres-config
sleep 10
docker-compose exec postgres-db /root/init-postgres-user

# Puppet server & Puppet db
sleep 10
docker-compose exec puppet-master /root/start-puppetserver-puppetdb

sleep 10
docker-compose exec puppet-master /bin/sh -c "/opt/puppetlabs/bin/puppet module install puppetlabs-stdlib"
docker-compose exec puppet-master /bin/sh -c "/opt/puppetlabs/bin/puppet module install dalen-puppetdbquery"

# Slave
docker-compose exec puppet-slave1 /bin/sh -c "/opt/puppetlabs/bin/puppet agent -t"
#docker-compose exec puppet-slave2 /bin/sh -c "/opt/puppetlabs/bin/puppet agent -t"
#docker-compose exec puppet-slave3 /bin/sh -c "/opt/puppetlabs/bin/puppet agent -t"
#docker-compose exec puppet-slave4 /bin/sh -c "/opt/puppetlabs/bin/puppet agent -t"
#docker-compose exec puppet-slave5 /bin/sh -c "/opt/puppetlabs/bin/puppet agent -t"
#docker-compose exec puppet-slave6 /bin/sh -c "/opt/puppetlabs/bin/puppet agent -t"
#docker-compose exec puppet-slave7 /bin/sh -c "/opt/puppetlabs/bin/puppet agent -t"
#docker-compose exec puppet-slave8 /bin/sh -c "/opt/puppetlabs/bin/puppet agent -t"
