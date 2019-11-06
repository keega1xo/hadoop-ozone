FROM elek/ozone-build:20191106-1
USER root
ADD entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh
USER jenkins1001
ENTRYPOINT ["/entrypoint.sh"]
