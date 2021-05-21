#设置tomcat镜像
FROM daocloud.io/library/tomcat:8.5.15-jre8
#删除webapps下面之前的war包
RUN rm -rf /usr/local/tomcat/webapps/*.war
#把新的war包放webapps下面
ADD target/springboot.war /usr/local/tomcat/webapps
#切换到指定目录,如果不需要修改端口号可不加这两行
WORKDIR /usr/local/tomcat/conf/
#设置tomcat的启动端口
RUN sed -i 's|"8080"|"9020"|' server.xml










