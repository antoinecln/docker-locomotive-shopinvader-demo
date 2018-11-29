ARG version
FROM quay.io/akretion/locomotive-shopinvader:${version}

RUN DEBIAN_FRONTEND=noninteractive \
    && apt-get update \
    && apt-get install -y mongodb-clients \
    && apt-get clean

COPY data /data
COPY public /usr/src/app/public
COPY bin/db-load.sh /usr/src/bin/db-load.sh

ENTRYPOINT ["/usr/src/bin/db-load.sh"]
CMD gosu loco bundle exec puma -C config/puma.rb
