FROM redhat/ubi8
RUN yum install -y httpd
RUN yum install -y zip
RUN yum install -y unzip
ADD https://www.free-css.com/assets/files/free-css-templates/download/page281/koppee.zip /var/www/html/
WORKDIR /var/www/html
RUN unzip koppee.zip
RUN cp -rvf coffee-shop-html-template/* .
RUN rm -rf  coffee-shop-html-template koppee.zip
CMD ["/usr/sbin/httpd" , "-D", "FOREGROUND"]
EXPOSE 80
