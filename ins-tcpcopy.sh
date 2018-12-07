#!/bin/bash
cd /home/ty

##安装依赖
yum -y install libpcap-devel

##下载源码包

wget https://github.com/session-replay-tools/tcpcopy/archive/1.0.0.tar.gz -O tcpcopy-1.0.0.tar.gz

tar zxvf tcpcopy-1.0.0.tar.gz

cd tcpcopy-1.0.0

##默认raw socket方式抓包
./configure
make && make install

##默认安装在/usr/local/tcpcopy这个目录

##启动示例
#/usr/local/tcpcopy/sbin/tcpcopy -x 80-192.168.42.164:80 -s 192.168.42.166 -c 10.10.10.x -d -C 4 -l tcpcopy.log -P /var/run/tcpcopy.pid
