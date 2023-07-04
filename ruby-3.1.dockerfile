ARG LEAP_VERSION
FROM ruby-buildenv-new-${LEAP_VERSION} AS build

ARG VERSION
WORKDIR /build
# fix detection of openssl by ruby-build
RUN sed -i s/SUSE_OPENSSL_STRING_PARAM_FUNCB\(SUSE_OPENSSL_RELEASE\)//g /usr/include/openssl/opensslv.h
RUN CONFIGURE_OPTS="--enable-shared --disable-static" \
  RUBY_CFLAGS="${CFLAGS} -fno-strict-aliasing" \
  ruby-build ${VERSION} --patch /opt/ruby


FROM ruby-base-new-${LEAP_VERSION} AS release

COPY --from=build /opt/ruby /opt/ruby
RUN ldconfig
ENV MARIADB_PLUGIN_DIR=/usr/lib64/mysql/plugin