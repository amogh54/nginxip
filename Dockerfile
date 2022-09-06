FROM ubuntu:latest

RUN apt-get update && apt-get install nginx -y

RUN apt-get install net-tools -y

ADD nginxip.sh  /usr/share/nginx/html/

RUN chmod -R 777 /usr/share/nginx/html/nginxip.sh

RUN /usr/share/nginx/html/nginxip.sh

EXPOSE 80

ENTRYPOINT  [ "nginx", "-g", "daemon off;" ]



