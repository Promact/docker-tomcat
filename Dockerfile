FROM tomcat:7
MAINTAINER Promact Infotech <onfo@promactinfo.com>
ADD ZodiacTblMtnPoc.war /tmp/
ADD dbconfiguration_replacement.py /root/
ADD prestart.sh /root/
RUN unzip /tmp/ZodiacTblMtnPoc.war -d $CATALINA_HOME/webapps/ZodiacTblMtnPoc
RUN chmod +x /root/prestart.sh
RUN apt-get update && apt-get install python python-lxml python-setuptools python-pip -y
EXPOSE 8080
CMD ["/root/prestart.sh"]



