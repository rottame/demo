FROM ruby-buildenv-new AS build
ARG VERSION

WORKDIR /build
RUN CONFIGURE_OPTS="--enable-shared --disable-static" \
  RUBY_CFLAGS="${CFLAGS} -fno-strict-aliasing" \
  ruby-build ${VERSION} --patch /opt/ruby


FROM ruby-base-new AS release

COPY --from=build /opt/ruby /opt/ruby
RUN ldconfig