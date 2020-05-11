#!/bin/bash
echo "1.安装php "
	yum install -y php php-fpm php-gd php-mbstring php-mcrypt

echo "2.安装nginx "
	yum install -y nginx

echo "3.安装git "
	yum install -y git

echo "4.git相关操作, 克隆dataoke工程"
	git clone https://github.com/shandong115/dataoke.git

echo "5.文件拷贝 "
	mv /etc/nginx/nginx.conf /etc/nginx/nginx.conf.old
	cp ~/dataoke/html/* /usr/share/nginx/html/
	cp  ~/dataoke/conf/nginx.conf /etc/nginx/
	cp -rf ~/dataoke/cert /etc/nginx

echo "6.更改html目录所有权" 
	chown -R nginx:nginx /usr/share/nginx/html

echo "7.启动服务 "
	systemctl start nginx
	systemctl start php-fpm

echo "8.添加自启动项 "
	systemctl enable nginx
	systemctl enable php-fpm
	
	systemctl disable aliyun

echo "骚年，开启你的购物之旅吧 ---> [点这里](https://zhaolixing.com)"
