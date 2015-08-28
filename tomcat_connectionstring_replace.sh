!#/bin/bash

sed -i -e 's#ENVHOSTNAME#'$ENV_HOSTNAME'#g' -e 's#ENVUSERNAME#'$ENV_USERNAME'#g' -e 's#ENVPASSWORD#'$ENV_PASSWORD'#g' applicationContext.xml