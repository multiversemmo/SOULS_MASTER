## BUILDING
##   (from project root directory)
##   $ docker build -t multiversemmo-souls_master .
##
## RUNNING
##   $ docker run multiversemmo-souls_master

FROM gcr.io/stacksmith-images/ubuntu-buildpack:14.04-r8

MAINTAINER Bitnami <containers@bitnami.com>

ENV STACKSMITH_STACK_ID="huovrge" \
    STACKSMITH_STACK_NAME="multiversemmo/SOULS_MASTER" \
    STACKSMITH_STACK_PRIVATE="1"

## STACKSMITH-END: Modifications below this line will be unchanged when regenerating
