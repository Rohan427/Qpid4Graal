FROM qpid/java-11:1.2

LABEL "com.randomlogic.qpidnative.author"="Paul Allen <pgallen@randomlogic.net>"

WORKDIR /usr/local/qpid

RUN yum -y update;yum clean all;rm -rf /var/cache/yum

ADD qpid.tar.gz


CMD ["/usr/local/qpid/qpid-start.sh"]

EXPOSE 8080
EXPOSE 5472
