ARG LEAP_VERSION
FROM ruby-buildenv-new-${LEAP_VERSION} AS build

WORKDIR /build
RUN CONFIGURE_OPTS="--enable-shared --disable-static" \
  RUBY_CFLAGS="${CFLAGS} -fno-strict-aliasing" \
  ruby-build 2.4.10 --patch /opt/ruby


FROM ruby-base-new-${LEAP_VERSION} AS release

COPY --from=build /opt/ruby /opt/ruby
RUN ldconfig