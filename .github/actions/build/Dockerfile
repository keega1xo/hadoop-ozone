FROM elek/ozone-build:20190825-1

ADD entrypoint.sh /entrypoint.sh
RUN sudo chmod +x /entrypoint.sh
USER root
ENTRYPOINT ["/entrypoint.sh"]
