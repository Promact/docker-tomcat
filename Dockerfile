FROM tomcat:7
MAINTAINER Promact Infotech <onfo@promactinfo.com>
ADD ZodiacTblMtnPoc.war /tmp/
ADD dbconfiguration_replacement.py /root/
ADD prestart.sh /root/
RUN unzip /tmp/ZodiacTblMtnPoc.war -d $CATALINA_HOME/webapps/ZodiacTblMtnPoc
EXPOSE 8080
CMD ["/root/prestart.sh","catalina.sh", "run"]



