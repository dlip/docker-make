FROM docker:edge

RUN apk update && \
  apk add gcc make py-pip python2-dev musl-dev linux-headers libffi-dev openssl-dev

RUN pip install docker-compose

ENTRYPOINT ["make"]