FROM centos:8
LABEL maintainer="lion811004@gmail.com"

RUN dnf update -y
RUN dnf install -y \
        ncurses 

RUN dnf install -y @postgresql:12
RUN dnf install -y postgresql-contrib

CMD ["/usr/sbin/init"]