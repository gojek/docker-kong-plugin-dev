FROM kong:0.14.1
RUN apk update
RUN apk upgrade
RUN mkdir /kong-dev
ADD . /kong-dev
RUN apk add build-base
RUN apk add bash
RUN apk add zip unzip
RUN luarocks install busted
ENV PATH=/kong-dev/bin:/usr/local/openresty/luajit/bin:/usr/local/openresty/bin:$PATH
WORKDIR /code
