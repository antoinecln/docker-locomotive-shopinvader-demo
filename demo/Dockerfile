ARG IMAGE_VERSION
FROM quay.io/akretion/locomotive-shopinvader:${IMAGE_VERSION}

RUN DEBIAN_FRONTEND=noninteractive \
    && apt-get update \
    && apt-get install -y mongodb-clients \
    && apt-get clean

COPY data /data
COPY bin/db-load.sh /usr/src/bin/db-load.sh

ENTRYPOINT ["/usr/src/bin/db-load.sh"]
