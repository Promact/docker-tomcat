FROM tomcat:7
MAINTAINER Promact Infotech <onfo@promactinfo.com>

ADD /home/downloads/ZodiacTblMtnPoc.war /tmp
RUN unzip /tmp/ZodiacTblMtnPoc.war -d $CATALINA_HOME/webapps/ZodiacTblMtnPoc
EXPOSE 8080
CMD ["catalina.sh", "run"]



