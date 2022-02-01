FROM centos:7
LABEL maintainer="lion811004@gmail.com"

RUN yum install -y\
    ncurses \
    vim \
    initscripts \
    chrony

# install puppet server 5
RUN rpm -Uvh https://yum.puppet.com/puppet5-release-el-7.noarch.rpm
RUN yum install -y puppetserver

# puppet configs
COPY puppet.conf /etc/puppetlabs/puppet/puppet.conf
COPY autosign.conf /etc/puppetlabs/puppet/autosign.conf
COPY puppetdb.conf /etc/puppetlabs/puppet/puppetdb.conf
COPY ca.conf /etc/puppetlabs/puppetserver/conf.d/ca.conf


CMD ["/usr/sbin/init"]