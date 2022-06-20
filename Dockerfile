FROM ubuntu:14.04
MAINTAINER janakiramm@gmail.com
RUN apt-get update && apt-get install -y supervisor curl wget
RUN curl -s https://deb.nodesource.com/setup_16.x | sudo bash
RUN ln -s /usr/bin/nodejs /usr/bin/node
#USER root
RUN sudo npm install -g --unsafe-perm node-red
EXPOSE 1881-2000
CMD ["/usr/bin/supervisord"]
