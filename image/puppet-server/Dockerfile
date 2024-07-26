FROM puppet/puppetserver:5.3.6

RUN rm -rf /etc/apt/sources.list.d/*

RUN apt-get update
RUN apt-get install -y vim ruby

RUN apt install -y hiera-eyaml
