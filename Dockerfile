FROM debian:latest
RUN apt-get update \
    && DEBIAN_FRONTEND=noninteractive apt-get -y upgrade \
    && DEBIAN_FRONTEND=noninteractive apt-get -y install task-xfce-desktop xrdp \
    && apt-get clean
CMD echo "root:root" | chpasswd \
    && service xrdp start \
    && tail -f /var/log/xrdp*.log
EXPOSE 3389
