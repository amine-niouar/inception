from debian:latest



RUN apt-get update
RUN apt install lsb-release curl gpg -y
RUN curl -fsSL https://packages.redis.io/gpg |  gpg --dearmor -o /usr/share/keyrings/redis-archive-keyring.gpg
RUN echo "deb [signed-by=/usr/share/keyrings/redis-archive-keyring.gpg] https://packages.redis.io/deb $(lsb_release -cs) main" | tee /etc/apt/sources.list.d/redis.list
RUN apt-get update
RUN apt-get install redis -y
COPY scripts.sh /tmp/scripts.sh
RUN chmod u+x ./tmp/scripts.sh

ENTRYPOINT ["./tmp/scripts.sh"]