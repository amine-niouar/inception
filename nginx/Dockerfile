FROM nginx:latest

#ufw
RUN openssl req  -x509 -newkey rsa:2048 -nodes -keyout /tmp/domain.key  -days 365 -out /tmp/domain.crt -sha256 -subj "/C=US/ST=New York/L=Brooklyn/O=Example Brooklyn Company/CN=examplebrooklyn.com"
ENTRYPOINT [ "nginx", "-g", "daemon off;" ]