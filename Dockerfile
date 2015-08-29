FROM tomcat:7
MAINTAINER Promact Infotech <onfo@promactinfo.com>
RUN apt-get update && apt-get install python python-lxml python-setuptools python-pip -y
ADD ZodiacTblMtnPoc.war /tmp/
ADD dbconfiguration_replacement.py /root/
ADD prestart.sh /root/
RUN unzip /tmp/ZodiacTblMtnPoc.war -d $CATALINA_HOME/webapps/ZodiacTblMtnPoc
RUN chmod +x /root/prestart.sh
ADD tomcat-users.xml /usr/local/tomcat/conf/
EXPOSE 8080
CMD ["/root/prestart.sh"]



