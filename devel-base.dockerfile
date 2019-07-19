FROM ruby-minimal-base

RUN zypper -n in gcc make libffi-devel libyaml-devel pkgconfig || true
  
ENV PKG_CONFIG_PATH /opt/ruby/lib/pkgconfig
ENV CFLAGS "-O2 -g -m64 -fmessage-length=0 -D_FORTIFY_SOURCE=2 -fstack-protector -funwind-tables -fasynchronous-unwind-tables"