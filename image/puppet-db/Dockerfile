FROM puppet/puppetdb

RUN apt-get update -y
RUN apt-get install -y iputils-ping init

COPY start-puppetdb /root/start-puppetdb
