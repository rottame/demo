ARG LEAP_VERSION
ARG VERSION
FROM ruby-buildenv-mc2-${LEAP_VERSION} AS build
WORKDIR /build
COPY ruby-2.0.0.patch ruby.patch
ENV VERSION ${VERSION}
ENV CONFIGURE_OPTS="--enable-shared --disable-static"
ENV RUBY_CFLAGS="${CFLAGS} -fno-strict-aliasing"
RUN ruby-build 2.0.0-p648 --patch /opt/ruby < ruby.patch


FROM ruby-base-${LEAP_VERSION} AS release
COPY --from=build /opt/ruby /opt/ruby
COPY --from=build /etc/ssl/openssl.cnf /etc/ssl/openssl.cnf
RUN ldconfig


FROM release AS slim-build
RUN rm -f /opt/ruby/lib/*.a && \
  rm -f /opt/ruby/lib/*.la


FROM ruby-slim-base-${LEAP_VERSION} AS slim-release
COPY --from=slim-build /opt/ruby /opt/ruby
COPY --from=slim-build /etc/ssl/openssl.cnf /etc/ssl/openssl.cnf
RUN ldconfig
