FROM htdvisser/taiga-front-dist:stable

ADD configure /tmp/

RUN rm -rf /usr/local/taiga/configure && mv /tmp/configure /usr/local/taiga/ && chmod +x /usr/local/taiga/configure