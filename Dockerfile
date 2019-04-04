FROM docker:edge

RUN apk update && \
  apk add make py-pip

RUN pip install docker-compose

ENTRYPOINT ["make"]