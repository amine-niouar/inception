from debian:bullseye

RUN apt update
RUN apt install curl wget  tar unzip npm -y
RUN wget https://github.com/portainer/portainer/releases/download/2.18.4/portainer-2.18.4-linux-amd64.tar.gz && tar  -xzf *.gz

WORKDIR /portainer
CMD [ "./portainer"]

