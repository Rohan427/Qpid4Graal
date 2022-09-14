FROM qpid/java-11:0.9.0

LABEL "com.randomlogic.qpidnative.author"="Paul Allen <pgallen@randomlogic.net>"

WORKDIR /

RUN yum -y update;yum clean all;rm -rf /var/cache/yum

ADD qpid.tar.gz /usr/local/qpid


CMD ["/usr/local/qpid/qpid-start.sh"]


EXPOSE 8080
EXPOSE 5672
