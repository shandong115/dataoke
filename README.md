# dataoke
Dataoke is a guide platform for shopping. <br>
## 一.准备工作
	1.大淘客在后台配置完成后，下载index.php文件. <br>
	2.阿里云香港B区主机（centos7.0 英文版官方镜像) <br>
## 二.在云主机操作如下：
	1.安装php <br>

	yum install -y php php-fpm php-bcmatch php-gd php-mbstring php-mcrypt

	2.安装nginx <br>

	yum install -y nginx

	3.安装git <br>

	yum install -y git

## 三.git相关操作, 克隆dataoke工程

	git clone git@github.com:shandong115/dataoke.git

	or: <br>

	git clone https://github.com/shandong115/dataoke.git

## 四.启动服务
	1.文件拷贝 <br>

	cp ~/dataoke/html/* /usr/share/nginx/html/
	cp ~/dataoke/conf/* /etc/nginx/
	cp -rf ~/dataoke/cert /etc/nginx

	2.更改html目录所有权 <br>

	chown -R nginx:nginx /usr/share/nginx/html

	3.启动服务 <br>

	systemctl start nginx
	systemctl start php-fpm

	4.添加自启动项 <br>

	systemctl enable nginx
	systemctl enable php-fpm
	
	systemctl disable aliyun

例子：[点这里](https://zhaolixing.com)
