FROM ubuntu:20.04
RUN ln -sf /usr/share/zoneinfo/Asia/Tokyo /etc/localtime
RUN apt-get update
RUN apt-get install -y apache2
CMD ["apachectl", "-D", "FOREGROUND"]
