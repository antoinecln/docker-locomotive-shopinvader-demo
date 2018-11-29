ARG version
FROM quay.io/akretion/locomotive-shopinvader:${version}

RUN DEBIAN_FRONTEND=noninteractive \
    && apt-get update \
    && apt-get install -y mongodb-clients \
    && apt-get clean
