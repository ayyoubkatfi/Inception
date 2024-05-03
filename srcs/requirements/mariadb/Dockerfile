FROM debian:11

EXPOSE 3306

RUN apt update -y  && apt install mariadb-server -y
   
COPY conf/mariadb.cnf /etc/mysql/mariadb.conf.d/50-server.cnf

COPY ./conf/script.sh /

RUN chmod 0777 /script.sh

CMD [ "./script.sh"]