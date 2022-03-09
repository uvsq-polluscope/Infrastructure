FROM postgres:latest
USER postgres
COPY VGP_campaign.pgsql /docker-entrypoint-initdb.d/
ENTRYPOINT ["docker-entrypoint.sh"]
CMD ["postgres"]

