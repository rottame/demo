FROM opensuse/leap:15.1 AS build

RUN zypper -n ref
RUN zypper -n dup

RUN zypper -n in git gcc make automake gdbm-devel libffi-devel \
  libyaml-devel ncurses-devel readline-devel \
  zlib-devel subversion bison wget tar gzip patch cmake xz \
  autoconf dcraw dejavu-fonts fdupes fftw3-devel freetype2-devel \
  gcc-c++ ghostscript-devel libbz2-devel libdjvulibre-devel \
  libexif-devel libjasper-devel libjpeg-devel \
  liblcms2-devel liblqr-devel librsvg-devel libtiff-devel libtool \
  libwebp-devel libxml2-devel lzma-devel mupdf-devel-static \
  openexr-devel openjpeg2-devel p7zip pkgconfig xdg-utils bzip2 \
  libnghttp2-devel libidn2-devel
  
RUN echo /opt/ruby/lib > /etc/ld.so.conf.d/ruby.conf
ENV PKG_CONFIG_PATH /opt/ruby/lib/pkgconfig
ENV PATH /opt/ruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
ENV CFLAGS "-O2 -g -m64 -fmessage-length=0 -D_FORTIFY_SOURCE=2 -fstack-protector -funwind-tables -fasynchronous-unwind-tables"

RUN mkdir /build
WORKDIR /build
RUN wget http://ftp5.gwdg.de/pub/opensuse/discontinued/source/distribution/13.2/repo/oss/suse/src/ImageMagick-6.8.9.8-1.4.src.rpm && \
  wget https://www.openssl.org/source/old/1.0.2/openssl-1.0.2u.tar.gz && \
  wget https://downloads.mariadb.com/Connectors/c/connector-c-2.3.7/mariadb-connector-c-2.3.7-src.tar.gz && \
  wget https://github.com/curl/curl/releases/download/curl-7_70_0/curl-7.70.0.tar.bz2 && \
  mkdir im-src && \
  cd im-src && \
  rpm2cpio ../ImageMagick-6.8.9.8-1.4.src.rpm | cpio -id


RUN tar zxf openssl-1.0.2u.tar.gz
WORKDIR /build/openssl-1.0.2u
RUN ./config --prefix=/opt/ruby  \
    threads shared no-rc5 no-idea no-ssl2 no-ssl3 enable-rfc3779 \
    enable-ec_nistp_64_gcc_128 enable-camellia zlib no-ec2m \
    ${CFLAGS} \
    -std=gnu99 \
    -Wa,--noexecstack \
    -Wl,-z,relro,-z,now \
    -fno-common \
    -DTERMIO \
    -DPURIFY \
    -D_GNU_SOURCE \
    -DOPENSSL_NO_BUF_FREELISTS \
    -Wall && \
  make depend && \
  make && \
  make install && \
  ldconfig

WORKDIR /build
RUN tar Jxf /build/im-src/ImageMagick-6.8.9-8.tar.xz
WORKDIR /build/ImageMagick-6.8.9-8
ENV MODULES_DIRNAME "modules-6_Q16-2"
ENV SHAREARCH_DIRNAME "config-6_Q16-2"
RUN patch      < ../im-src/ImageMagick-6.6.8.9-examples.patch && \  
  patch      < ../im-src/ImageMagick-6.6.8.9-doc.patch && \  
  patch -p1  < ../im-src/ImageMagick-6.7.6.1-no-dist-lzip.patch && \       
  patch -p1  < ../im-src/ImageMagick-6.8.4.0-rpath.patch && \       
  patch -p1  < ../im-src/ImageMagick-6.8.5.7-no-XPMCompliance.patch && \       
  patch -p1  < ../im-src/ImageMagick-6.8.4.0-dont-build-in-install.patch && \                  
  sed -i 's:^\(CONFIGURE_RELATIVE_PATH=.*\):\1_Q16-2:' configure.ac && \               
  autoreconf --force --install -v && \               
  automake && \               
  LDFLAGS="-L/opt/ruby/lib" ./configure \
  --prefix=/opt/ruby \
  --with-pic \
  --enable-shared \
  --without-frozenpaths \
  --with-magick_plus_plus \
  --with-modules \
  --with-threads \
  --without-perl \
  --disable-static \
  --with-djvu=yes \
  --with-wmf=yes \
  --with-rsvg=yes \
  --with-quantum-depth=16 && \
  make all && \
  make install && \
  ln -sf /opt/ruby/lib/libMagick++-6.Q16.so /opt/ruby/lib/libMagick++.so && \
  ln -sf /opt/ruby/lib/libMagickCore-6.Q16.so /opt/ruby/lib/libMagickCore.so && \
  ln -sf /opt/ruby/lib/libMagickWand-6.Q16.so /opt/ruby/lib/libMagickWand.so && \
  ldconfig

  
WORKDIR /build  
RUN tar zxf mariadb-connector-c-2.3.7-src.tar.gz
WORKDIR /build/mariadb-connector-c-2.3.7-src
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
  ln -sf /opt/ruby/bin/mariadb_config /opt/ruby/bin/mysql_config && \
  mv /opt/ruby/lib/mariadb/lib* /opt/ruby/lib/


WORKDIR /build  
RUN tar jxf curl-7.70.0.tar.bz2
WORKDIR /build/curl-7.70.0
RUN LDFLAGS="-L/opt/ruby/lib" ./configure   \
  --prefix=/opt/ruby  \
  --with-nghttp2 && \
  make && \
  make install && \
  ldconfig

ADD AddTrust_External_CA_Root.p11-kit /etc/pki/trust/blacklist/AddTrust_External_CA_Root.p11-kit
RUN update-ca-certificates

WORKDIR /build
RUN git clone https://github.com/rbenv/ruby-build.git
WORKDIR /build/ruby-build
RUN PREFIX=/usr/local ./install.sh




































