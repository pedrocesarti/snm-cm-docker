FROM ruby:2.1-slim
MAINTAINER Pedro Cesar <pedrocesar.ti@gmail.com>

ENV SETUP_DIR /tmp/deploy
ENV MODULE_DIR /tmp/deploy/modules

ADD deploy/ ${SETUP_DIR}

WORKDIR ${SETUP_DIR}

RUN apt-get update && apt-get install -y build-essential && gem install --no-ri --no-rdoc bundler
RUN bundle install 
RUN librarian-chef install 
#RUN puppet apply --modulepath=${MODULE_DIR} -e "class { 'redis':; }" --debug

#EXPOSE 6379 

CMD tail -f /dev/null
