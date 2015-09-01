# docker-tomcat

This will help you to deploy java application through tomcat.
You can build image by following command:
```sh
$ docker build -t myjavaapp
```
After creating image, just run that by:
```sh
docker run --name appcontainer --net=host -e URL=jdbc:mysql://ipaddress/db -e USERNAME=username -e PASSWORD=password -d myjavaapp
```
Those environment variable will use in your application.
