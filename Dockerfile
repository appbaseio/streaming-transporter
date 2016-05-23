FROM golang

MAINTAINER Rishi Shah <rishiloyola98245@gmail.com>

ADD . /go/src/github.com/compose

RUN cd src/github.com/compose && \
 	git clone https://github.com/compose/transporter.git && \
 	cd transporter && \
 	git init && \
 	git remote add fork https://github.com/appbaseio/transporter.git && \
 	git pull fork master

RUN go get github.com/tools/godep && \
	cd src/github.com/compose/transporter && \
	godep restore && \
	godep go build -a ./cmd/...

COPY ./docker-entrypoint.sh /

RUN chmod 700 /docker-entrypoint.sh

ENTRYPOINT ["/docker-entrypoint.sh"]
