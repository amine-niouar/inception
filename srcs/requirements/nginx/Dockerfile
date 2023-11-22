FROM debian:bullseye

RUN apt update
RUN apt install nginx -y

COPY tools/default.conf /etc/nginx/sites-enabled/
RUN apt -y install openssl
RUN openssl req  -x509 -newkey rsa:2048 -nodes -keyout /tmp/domain.key  -days 365 -out /tmp/domain.crt -sha256 -subj "/C=US/ST=New York/L=Brooklyn/O=Example Brooklyn Company/CN=examplebrooklyn.com"
CMD [ "nginx", "-g", "daemon off;" ]
