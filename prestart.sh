#!/bin/bash
python /root/dbconfiguration_replacement.py $CATALINA_HOME/webapps/ZodiacTblMtnPoc/WEB-INF/applicationContext.xml
sh /usr/local/tomcat/catalina.sh run