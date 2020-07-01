FROM opensuse/leap:15.1

RUN zypper -n ref
RUN zypper -n dup

RUN zypper -n in libdjvulibre21 libfftw3-3 libjpeg62 librsvg-2-2 liblqr-1-0 \
  libwebp6 liblcms2-2 libgomp1 libltdl7 libgdbm4 libopenjp2-7 libIlmImf-2_2-23 \
  libIexMath-2_2-23 libImath-2_2-23 libffi7 libreadline7 libncurses6 \
  glibc-locale timezone vim libyaml-0-2 libcurl4 ImageMagick libmariadb3 curl
  
RUN ln -sf /usr/share/zoneinfo/Europe/Rome /etc/localtime

ENV PATH /opt/ruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
RUN echo /opt/ruby/lib > /etc/ld.so.conf.d/ruby.conf