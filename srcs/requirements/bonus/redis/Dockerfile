from debian:bullseye



RUN apt-get update
# RUN apt install lsb-release curl gpg -y
# RUN curl -fsSL https://packages.redis.io/gpg |  gpg --dearmor -o /usr/share/keyrings/redis-archive-keyring.gpg
# RUN echo "deb [signed-by=/usr/share/keyrings/redis-archive-keyring.gpg] https://packages.redis.io/deb $(lsb_release -cs) main" | tee /etc/apt/sources.list.d/redis.list
# RUN apt-get update
# RUN apt install ufw -y
# RUN ufw allow 6379
RUN apt-get install redis-server -y
COPY tools/scripts.sh /tmp/scripts.sh
COPY tools/redis.conf /etc/redis
RUN chmod u+x ./tmp/scripts.sh
#RUN service redis-server start
CMD  ["./tmp/scripts.sh"]
