ARG LEAP_VERSION
FROM ruby:1.9-leap${LEAP_VERSION} AS build
RUN rm -f /opt/ruby/lib/*.a && \
  rm -f /opt/ruby/lib/*.la
  
FROM ruby-slim-base-${LEAP_VERSION} AS release

COPY --from=build /opt/ruby /opt/ruby
COPY --from=build /etc/ssl/openssl.cnf /etc/ssl/openssl.cnf
RUN ldconfig