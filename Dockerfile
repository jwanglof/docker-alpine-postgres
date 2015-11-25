FROM kiasaki/alpine-postgres

RUN rm /var/cache/apk/*

RUN mkdir /docker-entrypoint-initdb.d

COPY docker-entrypoint.sh /

ENTRYPOINT ["/docker-entrypoint.sh"]

EXPOSE 5432
CMD ["postgres"]