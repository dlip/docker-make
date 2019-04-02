FROM docker:edge

RUN apk update
RUN apk add make

RUN mv /usr/local/bin/docker /usr/local/bin/docker-bin
ADD docker-entrypoint.sh /usr/local/bin/docker

ENTRYPOINT ["make"]