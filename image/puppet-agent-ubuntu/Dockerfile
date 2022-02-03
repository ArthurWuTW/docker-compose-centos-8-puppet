FROM ubuntu:20.04

ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get update -y
RUN apt-get install -y iputils-ping init wget curl git

# Install Puppet Server
RUN wget https://apt.puppetlabs.com/puppet7-release-focal.deb
RUN dpkg -i puppet7-release-focal.deb
RUN apt-get update -y
RUN apt-get install -y puppet-agent

# puppet configs
COPY puppet.conf /etc/puppetlabs/puppet/

CMD ["/sbin/init"]