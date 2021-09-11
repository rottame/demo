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
  libnghttp2-devel libidn2-devel
  
RUN echo /opt/ruby/lib > /etc/ld.so.conf.d/ruby.conf
ENV PKG_CONFIG_PATH /opt/ruby/lib/pkgconfig
ENV PATH /opt/ruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
ENV CFLAGS "-O2 -g -m64 -fmessage-length=0 -D_FORTIFY_SOURCE=2 -fstack-protector -funwind-tables -fasynchronous-unwind-tables"

RUN mkdir /build
WORKDIR /build
RUN wget http://repos.obs.intercom.it/home:/rottame:/vhosts-ng/openSUSE_Leap_15.2/src/ImageMagick6-6.8.8.1-lp152.82.1.src.rpm && \
  wget http://ftp5.gwdg.de/pub/opensuse/source/distribution/leap/15.1/repo/oss/src/openssl-1_0_0-1.0.2p-lp151.4.8.src.rpm && \
  wget https://downloads.mariadb.com/Connectors/c/connector-c-3.1.9/mariadb-connector-c-3.1.9-src.tar.gz && \
  wget https://downloads.mariadb.com/Connectors/c/connector-c-2.3.7/mariadb-connector-c-2.3.7-src.tar.gz && \
  wget https://github.com/curl/curl/releases/download/curl-7_70_0/curl-7.70.0.tar.bz2 && \
  mkdir openssl-src im-src && \
  cd openssl-src && \
  rpm2cpio ../openssl-1_0_0-1.0.2p-lp151.4.8.src.rpm | cpio -id && \
  cd ../im-src && \
  rpm2cpio ../ImageMagick6-6.8.8.1-lp152.82.1.src.rpm | cpio -id


RUN tar zxf openssl-src/openssl-1.0.2p.tar.gz
WORKDIR /build/openssl-1.0.2p
RUN patch -p1 < ../openssl-src/merge_from_0.9.8k.patch && \
  patch -p1 < ../openssl-src/openssl-1.0.0-c_rehash-compat.diff  && \
  patch -p1 < ../openssl-src/openssl-engines-path.patch  && \
  patch -p1 < ../openssl-src/openssl-1.0.0-version.patch  && \
  patch -p1 < ../openssl-src/openssl-1.0.2a-padlock64.patch  && \
  patch -p1 < ../openssl-src/openssl-fix-pod-syntax.diff  && \
  patch -p1 < ../openssl-src/openssl-truststore.patch  && \
  patch -p1 < ../openssl-src/compression_methods_switch.patch  && \
  patch -p1 < ../openssl-src/openssl-1.0.2a-default-paths.patch  && \
  patch -p1 < ../openssl-src/openssl-pkgconfig.patch  && \
  patch -p1 < ../openssl-src/openssl-1.0.2a-ipv6-apps.patch  && \
  patch -p1 < ../openssl-src/openssl-1.0.2i-fips.patch  && \
  patch -p1 < ../openssl-src/openssl-1.0.2a-fips-ec.patch  && \
  patch -p1 < ../openssl-src/openssl-1.0.2a-fips-ctor.patch  && \
  patch -p1 < ../openssl-src/openssl-1.0.2i-new-fips-reqs.patch  && \
  patch -p1 < ../openssl-src/openssl-gcc-attributes.patch  && \
  patch -p1 < ../openssl-src/0001-Axe-builtin-printf-implementation-use-glibc-instead.patch  && \
  patch -p1 < ../openssl-src/openssl-no-egd.patch  && \
  patch -p1 < ../openssl-src/openssl-fips-hidden.patch  && \
  patch -p1 < ../openssl-src/openssl-1.0.1e-add-suse-default-cipher.patch  && \
  patch -p1 < ../openssl-src/openssl-1.0.1e-add-test-suse-default-cipher-suite.patch  && \
  patch -p1 < ../openssl-src/openssl-missing_FIPS_ec_group_new_by_curve_name.patch  && \
  patch -p1 < ../openssl-src/openssl-fips-dont_run_FIPS_module_installed.patch  && \
  patch -p1 < ../openssl-src/openssl-fips_disallow_x931_rand_method.patch  && \
  patch -p1 < ../openssl-src/openssl-fips_disallow_ENGINE_loading.patch  && \
  patch -p1 < ../openssl-src/openssl-rsakeygen-minimum-distance.patch  && \
  patch -p1 < ../openssl-src/openssl-urandom-reseeding.patch  && \
  patch -p1 < ../openssl-src/openssl-fips-rsagen-d-bits.patch  && \
  patch -p1 < ../openssl-src/openssl-fips-selftests_in_nonfips_mode.patch  && \
  patch -p1 < ../openssl-src/openssl-fips-fix-odd-rsakeybits.patch  && \
  patch -p1 < ../openssl-src/openssl-fips-clearerror.patch  && \
  patch -p1 < ../openssl-src/openssl-fips-dont-fall-back-to-default-digest.patch  && \
  patch -p1 < ../openssl-src/openssl-fipslocking.patch  && \
  patch -p1 < ../openssl-src/openssl-randfile_fread_interrupt.patch  && \
  patch -p1 < ../openssl-src/openssl-fips-xts_nonidentical_key_parts.patch  && \
  patch -p1 < ../openssl-src/openssl-fips_add_cavs_tests.patch  && \
  patch -p1 < ../openssl-src/openssl-fips-OPENSSL_s390xcap.patch  && \
  patch -p1 < ../openssl-src/openssl-fips_cavs_helpers_run_in_fips_mode.patch  && \
  patch -p1 < ../openssl-src/openssl-fips_cavs_pad_with_zeroes.patch  && \
  patch -p1 < ../openssl-src/openssl-fips_cavs_aes_keywrap.patch  && \
  patch -p1 < ../openssl-src/openssl-fips-run_selftests_only_when_module_is_complete.patch  && \
  patch -p1 -R < ../openssl-src/0001-Set-FIPS-thread-id-callback.patch  && \
  patch -p1 < ../openssl-src/openssl-CVE-2018-0737-fips.patch  && \
  patch -p1 < ../openssl-src/openssl-One_and_Done.patch && \
  ./config --prefix=/opt/ruby --openssldir=/etc/ssl/ \
    threads shared no-rc5 no-idea fips no-ssl2 no-ssl3 enable-rfc3779 \
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




































