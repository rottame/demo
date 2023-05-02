ARG LEAP_VERSION
FROM opensuse/leap:${LEAP_VERSION} AS build

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
  libnghttp2-devel libidn2-devel rpm-build

RUN echo /opt/ruby/lib > /etc/ld.so.conf.d/ruby.conf
ENV PKG_CONFIG_PATH /opt/ruby/lib/pkgconfig
ENV PATH /opt/ruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
ENV CFLAGS "-O2 -g -m64 -fmessage-length=0 -D_FORTIFY_SOURCE=2 -fstack-protector -funwind-tables -fasynchronous-unwind-tables"

RUN mkdir /build
WORKDIR /build
RUN wget https://repos.obs.intercom.it/home:/rottame:/vhosts-ng/15.4/src/ImageMagick6-6.8.8.1-lp154.82.1.src.rpm
RUN wget https://downloads.mariadb.com/Connectors/c/connector-c-3.3.2/mariadb-connector-c-3.3.2-src.tar.gz
RUN wget https://downloads.mariadb.com/Connectors/c/connector-c-2.3.7/mariadb-connector-c-2.3.7-src.tar.gz
RUN wget https://github.com/curl/curl/releases/download/curl-7_85_0/curl-7.85.0.tar.bz2
RUN mkdir openssl-src im-src
WORKDIR /build/im-src
RUN rpm2cpio ../ImageMagick6-6.8.8.1-lp154.82.1.src.rpm | cpio -id

WORKDIR /build

ADD build_openssl.sh /build
RUN /build/build_openssl.sh || exit 1

WORKDIR /build
RUN tar jxf curl-7.85.0.tar.bz2
WORKDIR /build/curl-7.85.0
RUN LDFLAGS="-L/opt/ruby/lib" ./configure   \
  --prefix=/opt/ruby  \
  --with-nghttp2 \
  --with-openssl && \
  make && \
  make install && \
  ldconfig

WORKDIR /build
RUN tar Jxf /build/im-src/ImageMagick-6.8.8-1.tar.xz
WORKDIR /build/ImageMagick-6.8.8-1
ADD patch_im.sh .
RUN chmod 755 patch_im.sh
RUN ./patch_im.sh
ENV MODULES_DIRNAME "modules-6_Q16-2"
ENV SHAREARCH_DIRNAME "config-6_Q16-2"
RUN sed -i 's:^\(CONFIGURE_RELATIVE_PATH=.*\):\1_Q16-2:' configure.ac && \
  autoreconf --force --install -v && \
  automake && \
  LDFLAGS="-L/opt/ruby/lib" ./configure \
  --prefix=/opt/ruby \
  --with-pic \
  --disable-silent-rules \
  --enable-shared \
  --without-frozenpaths \
  --with-magick_plus_plus \
  --with-modules \
  --with-threads \
  --without-perl \
  --disable-static \
  --with-djvu=yes \
  --with-rsvg=yes \
  --with-wmf=yes \
  --with-quantum-depth=16 && \
  make all && \
  make install && \
  ln -sf /opt/ruby/lib/libMagick++-6.Q16.so /opt/ruby/lib/libMagick++.so && \
  ln -sf /opt/ruby/lib/libMagickCore-6.Q16.so /opt/ruby/lib/libMagickCore.so && \
  ln -sf /opt/ruby/lib/libMagickWand-6.Q16.so /opt/ruby/lib/libMagickWand.so && \
  ldconfig

RUN patch --dir /opt/ruby/etc/ImageMagick-6_Q16-2 < ../im-src/ImageMagick-configuration-SUSE.patch

ADD AddTrust_External_CA_Root.p11-kit /etc/pki/trust/blacklist/AddTrust_External_CA_Root.p11-kit
ADD DST_Root_CA_X3.pem /etc/pki/trust/blacklist/DST_Root_CA_X3.pem
RUN update-ca-certificates

WORKDIR /build
RUN git clone https://github.com/rbenv/ruby-build.git
WORKDIR /build/ruby-build
RUN git checkout v20220721
RUN PREFIX=/usr/local ./install.sh

