#!/bin/bash
##udp的流量复制较为简单 只需要这个工具
##安装依赖
yum install automake libtool autoconf libtool -y 

##编译安装
git clone http://github.com/wangbin579/udpcopy
cd udpcopy/
sh autogen.sh
./configure
make && make install 

##启动示例

udpcopy -x local_port-remote_ip:remote_port 
