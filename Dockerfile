FROM tomcat:7
MAINTAINER Promact Infotech <onfo@promactinfo.com>

RUN mkdir /webapps
RUN mkdir /webapps/ZodiacTblMtnPoc
RUN unzip /home/download/ZodiacTblMtnPoc.war -d /weapps/ZodiacTblMtnPoc

VOLUME ["/webapps"]

CMD /bin/sh



