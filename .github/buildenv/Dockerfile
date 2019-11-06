FROM elek/ozone-build:20191106-1
ADD entrypoint.sh /entrypoint.sh
RUN sudo chmod +x /entrypoint.sh
USER jenkins1001
ENTRYPOINT ["/entrypoint.sh"]
