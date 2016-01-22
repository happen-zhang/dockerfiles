FROM centos:latest

MAINTAINER zhanghaipeng <zhanghaipeng404@gmail.com>

RUN yum update -y && \
    yum install -y \
    wget git md5sum \
    gcc-c++ patch ctags \
    openssl openssl-devel \
    zlib zlib-devel \
    pcre pcre-devel

CMD ["/bin/bash"]
