FROM ruby-buildenv AS build

WORKDIR /build
RUN CONFIGURE_OPTS="--enable-shared --disable-static" \
  RUBY_CFLAGS="${CFLAGS} -fno-strict-aliasing" \
  ruby-build 2.3.8 --patch /opt/ruby


FROM ruby-devel-base AS release

COPY --from=build /opt/ruby /opt/ruby
RUN ldconfig