docker-compose up --build --detach

sleep 10
docker-compose exec puppet /bin/sh -c "service puppetserver start"
sleep 20
docker-compose exec puppetdb /bin/sh -c "puppet agent -t"
sleep 10
docker-compose exec puppetdb /bin/sh -c "/opt/puppetlabs/bin/puppetdb ssl-setup -f"
docker-compose exec puppetdb /bin/sh -c "/opt/puppetlabs/bin/puppetdb start"

# Slave
#docker-compose exec puppet-slave1 /bin/sh -c "/opt/puppetlabs/bin/puppet agent -t"
#docker-compose exec puppet-slave2 /bin/sh -c "/opt/puppetlabs/bin/puppet agent -t"
#docker-compose exec puppet-slave3 /bin/sh -c "/opt/puppetlabs/bin/puppet agent -t"
#docker-compose exec puppet-slave4 /bin/sh -c "/opt/puppetlabs/bin/puppet agent -t"
#docker-compose exec puppet-slave5 /bin/sh -c "/opt/puppetlabs/bin/puppet agent -t"
#docker-compose exec puppet-slave6 /bin/sh -c "/opt/puppetlabs/bin/puppet agent -t"
#docker-compose exec puppet-slave7 /bin/sh -c "/opt/puppetlabs/bin/puppet agent -t"
#docker-compose exec puppet-slave8 /bin/sh -c "/opt/puppetlabs/bin/puppet agent -t"
