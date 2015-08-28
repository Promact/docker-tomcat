FROM tomcat:7
MAINTAINER Promact Infotech <onfo@promactinfo.com>
ADD /home/downloads/ZodiacTblMtnPoc.war /tmp
ADD tomcat_connectionstring_replace.sh /tmp
RUN unzip /tmp/ZodiacTblMtnPoc.war -d $CATALINA_HOME/webapps/ZodiacTblMtnPoc
RUN /tmp/tomcat_connectionstring_replace.sh
EXPOSE 8080
CMD ["catalina.sh", "run"]



