#!/bin/bash

##下载源码
wget https://github.com/session-replay-tools/intercept/archive/1.0.0.tar.gz -O intercept-1.0.0.tar.gz
##安装依赖
yum -y install libpcap-devel
###
tar zxvf intercept-1.0.0.tar.gz
cd intercept-1.0.0
./configure
make && make install
##默认安装路径在/usr/local/intercept下

##启动示例
#/usr/local/intercept/sbin/intercept -i eth1 -l intercept.log -P /var/run/intercept.pid -F ‘tcp and src port 80’ -d
