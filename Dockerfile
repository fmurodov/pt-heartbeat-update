FROM alpine:latest as builder

RUN apk add --no-cache git
RUN git clone https://github.com/percona/percona-toolkit.git

FROM alpine:latest

RUN apk add --no-cache perl \
                       perl-dbi \
                       perl-dbd-mysql

COPY --from=builder percona-toolkit/bin/pt-heartbeat /usr/bin/
COPY entrypoint.sh .

ENV UPDATE_INTERVAL 1.0

RUN chmod +x entrypoint.sh

ENTRYPOINT [ "./entrypoint.sh" ]
