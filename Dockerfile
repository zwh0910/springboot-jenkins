#����tomcat����
FROM daocloud.io/library/tomcat:8.5.15-jre8
#ɾ��webapps����֮ǰ��war��
RUN rm -rf /usr/local/tomcat/webapps/*.war
#���µ�war����webapps����
ADD target/demo.war /usr/local/tomcat/webapps
#�л���ָ��Ŀ¼,�������Ҫ�޸Ķ˿ںſɲ���������
#WORKDIR /usr/local/tomcat/conf/
#����tomcat�������˿�
#RUN sed -i 's|"8080"|"9020"|' server.xml











