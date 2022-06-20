FROM ubuntu:22.04
RUN apt-get update && install -y git-core curl build-essential openssl libssl-dev supervisor \
 && git clone https://github.com/nodejs/node.git \
 && cd node \
 && ./configure \
 && make \
 && sudo make install
 
RUN ln -s /usr/bin/nodejs /usr/bin/node
#USER root
RUN sudo npm install -g --unsafe-perm node-red
EXPOSE 1881-2000
CMD ["/usr/bin/supervisord"]
