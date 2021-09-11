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
  libnghttp2-devel libidn2-devel libopenssl-1_1-devel

  
RUN echo /opt/ruby/lib > /etc/ld.so.conf.d/ruby.conf
ENV PKG_CONFIG_PATH /opt/ruby/lib/pkgconfig
ENV PATH /opt/ruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
ENV CFLAGS "-O2 -g -m64 -fmessage-length=0 -D_FORTIFY_SOURCE=2 -fstack-protector -funwind-tables -fasynchronous-unwind-tables"

RUN mkdir /build
WORKDIR /build

WORKDIR /build
RUN git clone https://github.com/rbenv/ruby-build.git
WORKDIR /build/ruby-build
RUN PREFIX=/usr/local ./install.sh




































