FROM ubantu
RUN apt-get update
RUN apt-get install apache2 \ zip \ unzip
RUN apt-get install apache2-utils -y
RUN apt-get clean
ADD https://www.free-css.com/assets/files/free-css-templates/download/page296/neogym.zip /var/www/html/
WORKDIR /var/www/html
RUN unzip neogym.zip
RUN cp -rvf neogym.html/* .
EXPOSE 80
CMD ["/usr/sbin/apache2ctl", "-D", "FOREGROUND"]


