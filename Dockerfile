FROM centos:latest

MAINTAINER zhanghaipeng <zhanghaipeng404@gmail.com>

RUN yum update -y && \
    yum clean

CMD ["/bin/bash"]
