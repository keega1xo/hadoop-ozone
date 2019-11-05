FROM elek/ozone-build:20191025-2
ADD entrypoint.sh /entrypoint.sh
RUN sudo chmod +x /entrypoint.sh
USER root
ENTRYPOINT ["/entrypoint.sh"]
