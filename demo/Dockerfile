FROM quay.io/akretion/locomotive-shopinvader:v3.4.x-20181129

RUN DEBIAN_FRONTEND=noninteractive \
    && apt-get update \
    && apt-get install -y mongodb-clients \
    && apt-get clean

COPY data /data
COPY bin/db-load.sh /usr/src/bin/db-load.sh

ENTRYPOINT ["/usr/src/bin/db-load.sh"]
