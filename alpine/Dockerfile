FROM kong:0.14.1
RUN apk update
RUN mkdir /kong-dev
ADD . /kong-dev
RUN apk add build-base zip bash
RUN luarocks install busted
ENV PATH=/kong-dev/bin:/usr/local/openresty/luajit/bin:/usr/local/openresty/bin:$PATH
