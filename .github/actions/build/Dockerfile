FROM elek/ozone-build:20191009-1-centos

ADD entrypoint.sh /entrypoint.sh
RUN sudo chmod +x /entrypoint.sh
USER root
ENTRYPOINT ["/entrypoint.sh"]
