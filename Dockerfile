# Version: 1.0.1
FROM ubuntu:latest
MAINTAINER miller "lun_527@163.com
USER root
RUN touch test.txt && echo "abc" >> abc.txt
EXPOSE 80 8080 1038
ENV WEBAPP_PORT=9090
WORKDIR /opt/
ENTRYPOINT ["ls"]
CMD ["-a", "-l" ]
VOLUME ["/mnt", "/var/www"]
ONBUILD ADD . /app/src
ONBUILD RUN echo "on build excuted" >> onbuild.txt
