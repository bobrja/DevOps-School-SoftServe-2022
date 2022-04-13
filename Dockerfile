FROM alpine

RUN apk --no-cache upgrade
RUN apk add --no-cache apache2
RUN apk add --no-cache

WORKDIR /var/www/
COPY /moodle /var/www/localhost/htdocs/

EXPOSE 80
#
#     $ docker run -d -p 80:80 --name apache_conteiner apache_alpine3
#
CMD ["-D","FOREGROUND"]

ENTRYPOINT ["/usr/sbin/httpd"]

test

dc
s
s
cs
