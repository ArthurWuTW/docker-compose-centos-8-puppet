FROM centos:8
LABEL maintainer="lion811004@gmail.com"

RUN dnf update -y
RUN dnf install -y \
        sudo \
        ncurses 

RUN dnf install -y @postgresql:12
RUN dnf install -y postgresql-contrib

COPY init-postgres-config /root/init-postgres-config
COPY init-postgres-user /root/init-postgres-user

CMD ["/usr/sbin/init"]