#!/bin/bash

mkdir -p /run/vsftpd/empty
/usr/sbin/vsftpd /etc/vsftpd.conf
