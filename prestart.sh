#!/bin/bash
python /root/dbconfiguration_replacement.py $CATALINA_HOME/webapps/ZodiacTblMtnPoc/WEB-INF/applicationContext.xml
sh $CATALINA_HOME/bin/catalina.sh run