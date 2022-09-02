ARG LEAP_VERSION
FROM ruby-buildenv-mc2-${LEAP_VERSION} AS build

WORKDIR /build
COPY ruby-1.8.7.patch ruby.patch
ENV CFLAGS "-O2 -g -m64"
RUN CONFIGURE_OPTS="--enable-shared --disable-static" \
  RUBY_CFLAGS="${CFLAGS} -fno-strict-aliasing" \
  ruby-build 1.8.7-p374 --patch /opt/ruby < ruby.patch


FROM ruby-base-${LEAP_VERSION} AS release

COPY --from=build /opt/ruby /opt/ruby
RUN ldconfig
ENV CFLAGS "-O2 -g -m64"