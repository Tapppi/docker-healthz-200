FROM busybox
MAINTAINER Tapani Moilanen <moilanen.tapani@gmail.com>

# Build server as in http://www.sohamkamani.com/blog/2016/11/22/docker-server-busybox-golang/
# Graceful server code from

COPY ./server /home/
EXPOSE 80
CMD /home/server