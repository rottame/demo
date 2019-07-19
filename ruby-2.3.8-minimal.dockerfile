FROM ruby:2.3.8-devel AS build
RUN find /opt/ruby/lib/ -name "*.a" -exec rm '{}' \; && \
  find /opt/ruby/lib/ -name "*.la" -exec rm '{}' \; 
  
FROM ruby-minimal-base AS release

COPY --from=build /opt/ruby /opt/ruby
RUN ldconfig