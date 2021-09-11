ARG LEAP_VERSION
FROM opensuse/leap:${LEAP_VERSION}

RUN zypper -n ref && \
    zypper -n dup && \
    zypper -n in libdjvulibre21 libfftw3-3 libjpeg62 librsvg-2-2 liblqr-1-0 \
    libwebp7 liblcms2-2 libgomp1 libltdl7 libgdbm4 libopenjp2-7 libIlmImf-2_2-23 \
    libIexMath-2_2-23 libImath-2_2-23 libffi7 libreadline7 libncurses6 \
    glibc-locale timezone libyaml-0-2 libcurl4 ImageMagick libmariadb3 libmariadb_plugins curl  && \
    rm -rf /var/cache/zypp && \
    rm -rf /var/log/* && \
    shopt -s extglob && \
    cd /usr/lib/locale/ && \
    mkdir keep && \
    cp -a C* keep && \
    cp -a it_IT* keep && \
    cp -a en_US* keep && \
    cp -a fr_FR* keep && \
    cp -a es_ES* keep && \
    cp -a de_DE* keep && \
    rpm -e glibc-locale && \
    cp -av keep/* . && \
    rm -rf keep

RUN ln -sf /usr/share/zoneinfo/Europe/Rome /etc/localtime

ENV PATH /opt/ruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
RUN echo /opt/ruby/lib > /etc/ld.so.conf.d/ruby.conf
