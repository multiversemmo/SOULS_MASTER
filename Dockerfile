## BUILDING
##   (from project root directory)
##   $ docker build -t multiversemmo-souls_master .
##
## RUNNING
##   $ docker run -p 9000:9000 multiversemmo-souls_master
##
## CONNECTING
##   Lookup the IP of your active docker host using:
##     $ docker-machine ip $(docker-machine active)
##   Connect to the container at DOCKER_IP:9000
##     replacing DOCKER_IP for the IP of your active docker host

FROM gcr.io/stacksmith-images/ubuntu-buildpack:14.04-r8

MAINTAINER Bitnami <containers@bitnami.com>

ENV STACKSMITH_STACK_ID="5ulcn1n" \
    STACKSMITH_STACK_NAME="multiversemmo/SOULS_MASTER" \
    STACKSMITH_STACK_PRIVATE="1"

RUN bitnami-pkg install php-7.0.8-0 --checksum afc462c63a44a1abe5c130d1fdfad3ef88989b8b75d782c90538a0d1acaff4ee

ENV PATH=/opt/bitnami/php/bin:$PATH

## STACKSMITH-END: Modifications below this line will be unchanged when regenerating

# PHP base template
COPY . /app
WORKDIR /app

CMD ["php", "-a"]
