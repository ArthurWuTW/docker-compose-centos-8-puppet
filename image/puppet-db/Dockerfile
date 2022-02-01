FROM puppet/puppetdb

RUN apt-get update -y
RUN apt-get install -y iputils-ping init wget curl


# Install Puppet Server
RUN curl -O https://apt.puppetlabs.com/puppetlabs-release-pc1-xenial.deb
RUN dpkg -i puppetlabs-release-pc1-xenial.deb
RUN apt-get update -y
RUN apt-get install -y puppetserver


# puppet configs
COPY puppet.conf /etc/puppetlabs/puppet/puppet.conf
COPY autosign.conf /etc/puppetlabs/puppet/autosign.conf
COPY puppetdb.conf /etc/puppetlabs/puppet/puppetdb.conf
COPY routes.yaml /etc/puppetlabs/puppet/routes.yaml
COPY ca.conf /etc/puppetlabs/puppetserver/conf.d/ca.conf


COPY start-puppetdb /root/start-puppetdb
