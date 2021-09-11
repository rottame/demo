ARG LEAP_VERSION
FROM ruby-buildenv-base-${LEAP_VERSION} AS build
  
WORKDIR /build  
RUN tar zxf mariadb-connector-c-3.1.9-src.tar.gz
WORKDIR /build/mariadb-connector-c-3.1.9-src
RUN cmake -DWITH_EXTERNAL_ZLIB:BOOL=ON \
  -DMARIADB_UNIX_ADDR:STRING=/run/mysql/mysql.sock \
  -DCMAKE_INSTALL_PREFIX:STRING=/opt/ruby \
  -DINSTALL_LIBDIR:STRING=/opt/ruby/lib \
  -DINSTALL_INCLUDEDIR:STRING=/opt/ruby/include/mysql \
  -DINSTALL_PLUGINDIR:STRING=/opt/ruby/lib/mysql/plugin/ \
  -DWITH_MYSQLCOMPAT=ON \
  -DWITH_SSL=OPENSSL \
  -DINSTALL_PCDIR="/opt/ruby/lib/pkgconfig" && \
  make && \
  make install && \
  ldconfig && \
  ln -sf /opt/ruby/bin/mariadb_config /opt/ruby/bin/mysql_config 

WORKDIR /build/ruby-build
