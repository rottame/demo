FROM ruby:2.2.10-leap AS build
RUN find /opt/ruby/lib/ -name "*.a" -exec rm '{}' \; && \
  find /opt/ruby/lib/ -name "*.la" -exec rm '{}' \; 
  
FROM ruby-slim-base AS release

COPY --from=build /opt/ruby /opt/ruby
RUN ldconfig