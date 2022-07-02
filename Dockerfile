
FROM ubuntu:latest

ADD ./scripts /scripts

RUN chmod +x /scripts/main.sh

CMD /scripts/main.sh

#CMD ls /scripts

