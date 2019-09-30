FROM alpine:3.9.4

RUN apk update
RUN apk upgrade
RUN apk add -v --no-cache mongodb 
RUN apk add -v --no-cache mongodb-tools

VOLUME ["/data/db"]
EXPOSE 27017 28017

COPY run.sh /root
ENTRYPOINT [ "/root/run.sh" ]
CMD [ "mongod", "--bind_ip", "0.0.0.0" ]
