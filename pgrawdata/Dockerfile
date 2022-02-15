FROM debezium/postgres
COPY VGP_campaign.pgsql /docker-entrypoint-initdb.d/
WORKDIR /docker-entrypoint-initdb.d/
CMD psql -U dwaccount -f *.pgsql