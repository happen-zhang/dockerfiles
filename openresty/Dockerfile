FROM zhanghaipeng/centos

MAINTAINER zhanghaipeng <zhanghaipeng404@gmail.com>

ENV OPENRESTY_VERSION=1.9.7.1 \
    OPENRESTY_DLOAD_URL=https://openresty.org/download/ngx_openresty-1.9.7.1.tar.gz

WORKDIR /tmp

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

CMD ["/bin/bash", "/usr/local/openresty/nginx/sbin/nginx"]

EXPOSE 80
EXPOSE 443
