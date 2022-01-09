FROM centos:8
LABEL maintainer="lion811004@gmail.com"


RUN yum install -y\
    ncurses \
    vim \
    initscripts \
    chrony

# install puppet server 5
RUN rpm -Uvh https://yum.puppet.com/puppet5-release-el-8.noarch.rpm
RUN yum install -y puppetserver

CMD ["/usr/sbin/init"]