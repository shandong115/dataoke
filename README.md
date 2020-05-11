# dataoke
Dataoke is a guide platform for shopping. <br>
## 一.准备工作
	1.大淘客在后台配置完成后，下载index.php文件. 
	2.阿里云香港B区主机（centos7.0 英文版官方镜像) 
## 二.在云主机操作如下：
	1.安装php 
	yum install -y php php-fpm php-gd php-mbstring php-mcrypt

	2.安装nginx 
	yum install -y nginx

	3.安装git 
	yum install -y git

## 三.git相关操作, 克隆dataoke工程
	git clone git@github.com:shandong115/dataoke.git
	or: 
	git clone https://github.com/shandong115/dataoke.git  (recommended)

## 四.启动服务
	1.文件拷贝 
	cp /etc/nginx/nginx.conf /etc/nginx/nginx.conf.old
	cp ~/dataoke/html/* /usr/share/nginx/html/
	cp  ~/dataoke/conf/nginx.conf /etc/nginx/
	cp -rf ~/dataoke/cert /etc/nginx

	2.更改html目录所有权 
	chown -R nginx:nginx /usr/share/nginx/html

	3.启动服务 
	systemctl start nginx
	systemctl start php-fpm

	4.添加自启动项 
	systemctl enable nginx
	systemctl enable php-fpm
	
	systemctl disable aliyun

## 更简单的安装操作：
	yum install -y git
	git clone https://github.com/shandong115/dataoke.git > setup.txt
	bash dataoke/shell/run.sh >> setup.txt

骚年，开启你的购物之旅吧 ---> [点这里](https://zhaolixing.com)
