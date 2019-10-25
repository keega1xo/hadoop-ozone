#FROM elek/ozone-build:20190825-1
FROM elek/ozone-build:20191025-1

ADD entrypoint.sh /entrypoint.sh
RUN sudo chmod +x /entrypoint.sh
USER root
ENTRYPOINT ["/entrypoint.sh"]
