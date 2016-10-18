FROM openshift/jws30-kt-base

MAINTAINER "hsyang" <hsyang@rockplace.co.kr>

USER root

# Source
COPY src/ /opt/jws-3.0/httpd/www/html/

EXPOSE 8000 6666 8443

CMD ["/opt/jws-3.0/httpd/sbin/apachectl","-k","start","-D","FOREGROUND"]
