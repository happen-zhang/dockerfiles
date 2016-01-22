FROM centos:latest

MAINTAINER zhanghaipeng <zhanghaipeng404@gmail.com>

ENV OPENRESTY_VERSION=1.9.7.1 \
    OPENRESTY_DLOAD_URL=https://openresty.org/download/ngx_openresty-1.9.7.1.tar.gz

WORKDIR /tmp

RUN yum update -y && \
    yum install -y \
    wget git md5sum \
    gcc-c++ patch ctags \
    openssl openssl-devel \
    zlib zlib-devel \
    pcre pcre-devel

RUN wget $OPENRESTY_DLOAD_URL

RUN tar -zxvf ngx_openresty-$OPENRESTY_VERSION.tar.gz && \
    cd ngx_openresty-$OPENRESTY_VERSION && \
    ./configure --prefix=/usr/local/openresty --with-http_ssl_module --with-luajit && \
    make && \
    make install

RUN cd ../ && \
   rm -rf ngx_openresty-$OPENRESTY_VERSION.tar.gz && \
   rm -rf ngx_openresty-$OPENRESTY_VERSION

WORKDIR /

ADD startup.sh /

RUN mkdir -p /data/www
VOLUME ["/data"]

CMD ["/bin/bash", "/startup.sh"]

EXPOSE 80
EXPOSE 443
