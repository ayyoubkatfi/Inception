FROM debian:11

EXPOSE 443
RUN apt update -y  && apt install nginx -y && apt install openssl -y
RUN mkdir -p /etc/nginx/ssl

RUN openssl req -x509 -nodes \
    -out /etc/nginx/ssl/akatfi.42.fr.crt\
    -keyout /etc/nginx/ssl/private-key.key \
    -subj "/C=MR/ST=IDF/L=benguerir/O=1337/OU=akatfi/CN=akatfi.42.fr/UID=akatfi"

COPY /conf/nginx.conf /etc/nginx/sites-enabled/

CMD [ "nginx", "-g", "daemon off;" ]