FROM centos

MAINTAINER yokrh <y.oka.gml@gmail.com>

RUN echo "*** is building ***"

RUN rpm -ivh http://nginx.org/packages/centos/7/noarch/RPMS/nginx-release-centos-7-0.el7.ngx.noarch.rpm
RUN yum install -y nginx

EXPOSE 80

COPY ./index.html /usr/share/nginx/html/index.html
COPY startup.sh /startup.sh
RUN chmod 744 /startup.sh
CMD ["/startup.sh"]
#CMD /bin/bash -c "nginx && bash"
