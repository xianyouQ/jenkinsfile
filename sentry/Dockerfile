FROM harbor.youxian.com/library/centos:7.4-3 

ENV APP_VERSION @APP_VERSION@
ENV SENTRY_CONF /home/youxian/webapps/conf

RUN mkdir -p /home/youxian

ADD dockerbuild.sh /home/youxian/dockerbuild.sh
ADD get-pip.py /home/youxian/get-pip.py
RUN chmod 777 /home/youxian/dockerbuild.sh
RUN /home/youxian/dockerbuild.sh




EXPOSE 9000

WORKDIR /home/youxian/webapps

CMD ["/home/youxian/webapps/bin/sentry","run","web"]
