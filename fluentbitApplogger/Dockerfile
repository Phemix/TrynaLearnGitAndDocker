FROM alpine:3.7 AS build
# Set up the build stage by getting dependencies
RUN apk add --no-cache cmake build-base
# grab the source code and build it
ADD http://fluentbit.io/releases/0.12/fluent-bit-0.12.12.tar.gz /fluentsourcefolder/
WORKDIR /fluentsourcefolder
RUN tar -zxf fluent-bit-0.12.12.tar.gz
WORKDIR /fluentsourcefolder/fluent-bit-0.12.12/build
RUN cmake ../
RUN make
# get the final app installed into a single location we can copy over
RUN make install DESTDIR=/fluentapplication

FROM alpine:3.7 AS dependency
COPY --from=build /fluentapplication /fluentapplication
RUN apk add --no-cache python3
WORKDIR /fluentapplication
COPY ./pythonFileLogger.py /pythonFileLogger.py
COPY ./command.sh /docker_command.sh

COPY ./fluentconfigs.conf /fluentapplication/usr/local/etc/fluent-bit/fluent-bit.conf 
RUN mkdir /Logs \
    &&  touch /Logs/py_app.log 
ARG IPADDRESS
ARG DEVICEVENDOR
ARG ASKID
ENV ip=$IPADDRESS
ENV vendor=$DEVICEVENDOR
ENV askID=$ASKID
WORKDIR /
CMD ["sh", "docker_command.sh"]
