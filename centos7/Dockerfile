FROM centos:7

MAINTAINER zhanghaipeng <zhanghaipeng404@gmail.com>

RUN mv /etc/yum.repos.d/CentOS-Base.repo /etc/yum.repos.d/CentOS-Base.repo.backup
COPY CentOS7-Base-163.repo /etc/yum.repos.d/CentOS-Base.repo

RUN yum update -y && yum clean all

CMD ["/bin/bash"]
