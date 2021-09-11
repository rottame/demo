FROM ruby:2.7-leap AS build
RUN rm -f /opt/ruby/lib/*.a && \
  rm -f /opt/ruby/lib/*.la
  
FROM ruby-slim-base-new AS release

COPY --from=build /opt/ruby /opt/ruby
RUN ldconfig
ENV MARIADB_PLUGIN_DIR=/usr/lib64/mysql/plugin