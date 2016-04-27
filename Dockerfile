FROM ubuntu:trusty
MAINTAINER Pedro Cesar <pedrocesar.ti@gmail.com>

ENV SETUP_DIR /tmp/deploy
ENV MODULE_DIR /tmp/deploy/modules

ADD deploy/ ${SETUP_DIR}

WORKDIR ${SETUP_DIR}

RUN apt-get update && apt-get install -y ruby ruby-dev build-essential && gem install bundler
RUN bundle install 
RUN librarian-puppet install 
RUN puppet apply --modulepath=${MODULE_DIR} -e "class { 'jenkins': executors => 0,}" --debug

#EXPOSE 6666 
#EXPOSE 0000 
