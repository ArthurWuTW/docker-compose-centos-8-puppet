FROM puppet/puppetdb
# https://github.com/puppetlabs/puppetdb/blob/6.x/docker/puppetdb/Dockerfile
# puppet/puppetdb install puppet7

RUN apt-get update -y
RUN apt-get install -y iputils-ping init wget curl git


# Install Puppet Server
RUN wget https://apt.puppetlabs.com/puppet7-release-focal.deb
RUN dpkg -i puppet7-release-focal.deb
RUN apt-get update -y
RUN apt-get install -y puppetserver


# puppet configs
COPY puppet.conf /etc/puppetlabs/puppet/puppet.conf
COPY autosign.conf /etc/puppetlabs/puppet/autosign.conf
COPY puppetdb.conf /etc/puppetlabs/puppet/puppetdb.conf
COPY routes.yaml /etc/puppetlabs/puppet/routes.yaml


COPY start-puppetserver-puppetdb /root/start-puppetserver-puppetdb
