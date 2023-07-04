ARG LEAP_VERSION
ARG VERSION
FROM ruby-buildenv-mc2-${LEAP_VERSION} AS build
WORKDIR /build
COPY ruby-1.8.7.patch ruby.patch
ENV VERSION ${VERSION}
ENV CFLAGS "-O2 -g -m64"
ENV CONFIGURE_OPTS="--enable-shared --disable-static"
ENV RUBY_CFLAGS="${CFLAGS} -fno-strict-aliasing"
RUN ruby-build 1.8.7-p374 --patch /opt/ruby < ruby.patch


FROM ruby-base-${LEAP_VERSION} AS release
COPY --from=build /opt/ruby /opt/ruby
RUN ldconfig
ENV CFLAGS "-O2 -g -m64"


FROM release AS slim-build
RUN rm -f /opt/ruby/lib/*.a && \
  rm -f /opt/ruby/lib/*.la


FROM ruby-slim-base-${LEAP_VERSION} AS slim-release
COPY --from=slim-build /opt/ruby /opt/ruby
RUN ldconfig
ENV CFLAGS "-O2 -g -m64"
