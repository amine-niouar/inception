from debian:bullseye


RUN apt-get update
RUN apt install unzip python3 -y
COPY wave_cafe.zip /tmp
RUN mkdir  /var/www 
RUN unzip /tmp/wave_cafe.zip -d /tmp/
RUN  mv /tmp/2121_wave_cafe/* /var/www/
RUN chmod 777 /var/www
CMD ["python3","-m","http.server","2023","--bind","0.0.0.0","--directory","/var/www/"]