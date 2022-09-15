FROM redhat/ubi8
RUN yum install -y httpd
RUN yum install -y zip
RUN yum install -y unzip
ADD https://www.free-css.com/assets/files/free-css-templates/download/page282/metal.zip /var/www/html/
WORKDIR /var/www/html
RUN unzip metal.zip
RUN cp -rvf metal-html/* .
CMD ["/usr/sbin/httpd" , "-D", "FOREGROUND"]
EXPOSE 80
