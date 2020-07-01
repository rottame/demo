FROM ruby:2.3.8-leap AS build
RUN rm -f /opt/ruby/lib/*.a && \
  rm -f /opt/ruby/lib/*.la
  
FROM ruby-slim-base AS release

COPY --from=build /opt/ruby /opt/ruby
RUN ldconfig