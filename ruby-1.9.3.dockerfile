ARG LEAP_VERSION
FROM ruby-buildenv-mc2-${LEAP_VERSION} AS build

WORKDIR /build
COPY ruby-1.9.3.patch ruby.patch
RUN CONFIGURE_OPTS="--enable-shared --disable-static" \
  RUBY_CFLAGS="${CFLAGS} -fno-strict-aliasing" \
  ruby-build 1.9.3-p551 --patch /opt/ruby < ruby.patch


FROM ruby-base-${LEAP_VERSION} AS release

COPY --from=build /opt/ruby /opt/ruby
RUN ldconfig