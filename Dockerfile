FROM ubuntu:20.04

RUN apt-get update && \
    DEBIAN_FRONTEND=noninteractive apt-get install -y vsftpd && \
    apt-get install -y ftp openssl

RUN useradd -m ftpuser && echo "ftpuser:12345" | chpasswd

COPY vsftpd.conf /etc/vsftpd.conf
COPY run.sh /run.sh
RUN chmod +x /run.sh

EXPOSE 20 21 21100-21110

CMD ["/run.sh"]
