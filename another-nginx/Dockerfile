FROM debian:latest

RUN apt update
RUN apt install nginx -y
RUN apt install ufw -y
RUN ufw allow 'Nginx HTTP'
COPY default.conf /etc/nginx/conf.d/
RUN apt -y install openssl
RUN openssl req  -x509 -newkey rsa:2048 -nodes -keyout /tmp/domain.key  -days 365 -out /tmp/domain.crt -sha256 -subj "/C=US/ST=New York/L=Brooklyn/O=Example Brooklyn Company/CN=examplebrooklyn.com"
ENTRYPOINT [ "nginx", "-g", "daemon off;" ]
#lsb-release gnupg 