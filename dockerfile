FROM centos:latest
MAINTAINER kshirodbehera1@gmail.com
RUN yum install -y httpd \
   zip \
 unzip
ADD https:https://www.free-css.com/free-css-templates/page266/nolo /var/www/html
WORKDIR /var/www/html
RUN unzip kindle.zip
RUN cp -rvf markup-kindle/*
RUN rm -rf MACOSX markups-kindle kindle.zip
CMD ["/usr/sbin/httpd", "-D", "FOREGROUND"]
EXPOSE 80
