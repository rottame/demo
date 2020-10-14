FROM ruby-buildenv-mc2 AS build

WORKDIR /build
RUN CONFIGURE_OPTS="--enable-shared --disable-static" \
  RUBY_CFLAGS="${CFLAGS} -fno-strict-aliasing" \
  ruby-build 2.1.10 --patch /opt/ruby


FROM ruby-base AS release

COPY --from=build /opt/ruby /opt/ruby
RUN ldconfig