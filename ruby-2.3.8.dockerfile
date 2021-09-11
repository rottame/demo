ARG LEAP_VERSION
FROM ruby-buildenv-mc3-${LEAP_VERSION} AS build

WORKDIR /build
RUN CONFIGURE_OPTS="--enable-shared --disable-static" \
  RUBY_CFLAGS="${CFLAGS} -fno-strict-aliasing" \
  ruby-build 2.3.8 --patch /opt/ruby


FROM ruby-base-${LEAP_VERSION} AS release

COPY --from=build /opt/ruby /opt/ruby
RUN ldconfig