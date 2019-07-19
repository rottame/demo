FROM ruby-buildenv AS build

WORKDIR /build
COPY ruby-2.0.0.patch ruby.patch
RUN CONFIGURE_OPTS="--enable-shared --disable-static" \
  RUBY_CFLAGS="${CFLAGS} -fno-strict-aliasing" \
  ruby-build 2.0.0-p648 --patch /opt/ruby < ruby.patch


FROM ruby-devel-base AS release

COPY --from=build /opt/ruby /opt/ruby
RUN ldconfig