FROM centos:8
LABEL maintainer="lion811004@gmail.com"

RUN sed -i 's/mirrorlist/#mirrorlist/g' /etc/yum.repos.d/CentOS-*
RUN sed -i 's|#baseurl=http://mirror.centos.org|baseurl=http://vault.centos.org|g' /etc/yum.repos.d/CentOS-*

RUN dnf update -y
RUN dnf install -y \
        sudo \
        ncurses 

RUN dnf install -y @postgresql:12
RUN dnf install -y postgresql-contrib

COPY init-postgres-config /root/init-postgres-config
COPY init-postgres-user /root/init-postgres-user

CMD ["/usr/sbin/init"]
