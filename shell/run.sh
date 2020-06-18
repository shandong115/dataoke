#!/bin/bash
echo "1.安装php "
	yum install -y php php-fpm php-gd php-mbstring php-mcrypt

echo "2.安装nginx "
	yum install -y nginx

echo "3.安装git "
	yum install -y git

echo "4.文件拷贝 "
	mv /etc/nginx/nginx.conf /etc/nginx/nginx.conf.old
	cp ~/dataoke/html/* /usr/share/nginx/html/
	cp  ~/dataoke/conf/nginx.conf /etc/nginx/
	cp -rf ~/dataoke/cert /etc/nginx
	sed -i "s/apache/nginx/g" /etc/php-fpm.d/www.conf
	mv /usr/share/nginx/html/index.html /usr/share/nginx/html/old.html 

echo "5.更改html目录所有权" 
	chown -R nginx:nginx /usr/share/nginx/html

echo "6.启动服务 "
	systemctl start nginx
	systemctl start php-fpm

echo "7.添加自启动项 "
	systemctl enable nginx
	systemctl enable php-fpm
	
	systemctl disable aliyun

echo "骚年，开启你的购物之旅吧 ---> [点这里](http://zhaolixing.com)"
