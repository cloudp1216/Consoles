FROM centos:7.9.2009

RUN set -x \
    && cp -f /usr/share/zoneinfo/Asia/Shanghai /etc/localtime \
    && curl -o /etc/yum.repos.d/CentOS-Base.repo https://mirrors.aliyun.com/repo/Centos-7.repo \
    && curl -o /etc/yum.repos.d/epel.repo https://mirrors.aliyun.com/repo/epel-7.repo \
    && yum install -y net-tools iproute lsof sudo openssl nginx openssh-clients telnet traceroute curl bind-utils \
    && yum clean all

ADD consoles-v1.6.3.tar.gz /

CMD ["entrypoint.sh"]

