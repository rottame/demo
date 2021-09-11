FROM ruby-slim-base-new

RUN zypper -n in gcc make libffi-devel libyaml-devel pkgconfig \
    ImageMagick-devel libcurl-devel libmariadb-devel libmariadb_plugins libopenssl-1_1-devel
  
ENV PKG_CONFIG_PATH /opt/ruby/lib/pkgconfig
ENV CFLAGS "-O2 -g -m64 -fmessage-length=0 -D_FORTIFY_SOURCE=2 -fstack-protector -funwind-tables -fasynchronous-unwind-tables"
