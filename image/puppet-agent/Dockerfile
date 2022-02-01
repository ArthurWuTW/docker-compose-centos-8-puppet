FROM centos:7
LABEL maintainer="lion811004@gmail.com"

# install puppet server 5
RUN rpm -Uvh https://yum.puppet.com/puppet5-release-el-7.noarch.rpm
RUN yum install -y puppet-agent

# puppet configs
COPY puppet.conf /etc/puppetlabs/puppet/

CMD ["/usr/sbin/init"]