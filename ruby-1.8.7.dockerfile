FROM ruby-buildenv AS build

WORKDIR /build
COPY ruby-1.8.7.patch ruby.patch
RUN CONFIGURE_OPTS="--enable-shared --disable-static" \
  RUBY_CFLAGS="${CFLAGS} -fno-strict-aliasing" \
  ruby-build 1.8.7-p374 --patch /opt/ruby < ruby.patch


FROM ruby-base AS release

COPY --from=build /opt/ruby /opt/ruby
RUN ldconfig