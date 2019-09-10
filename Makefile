.PHONY: all base buildenv devel-base slim-base push
.PHONY: ruby-1.8.7-all  ruby-1.8.7  ruby-1.8.7-slim
.PHONY: ruby-1.9.3-all  ruby-1.9.3  ruby-1.9.3-slim
.PHONY: ruby-2.0.0-all  ruby-2.0.0  ruby-2.0.0-slim
.PHONY: ruby-2.1.10-all ruby-2.1.10 ruby-2.1.10-slim
.PHONY: ruby-2.2.10-all ruby-2.2.10 ruby-2.2.10-slim
.PHONY: ruby-2.3.8-all  ruby-2.3.8  ruby-2.3.8-slim
.PHONY: push-ruby-1.8.7-all  push-ruby-1.8.7  push-ruby-1.8.7-slim              
.PHONY: push-ruby-1.9.3-all  push-ruby-1.9.3  push-ruby-1.9.3-slim              
.PHONY: push-ruby-2.0.0-all  push-ruby-2.0.0  push-ruby-2.0.0-slim              
.PHONY: push-ruby-2.1.10-all push-ruby-2.1.10 push-ruby-2.1.10-slim                
.PHONY: push-ruby-2.2.10-all push-ruby-2.2.10 push-ruby-2.2.10-slim                
.PHONY: push-ruby-2.3.8-all  push-ruby-2.3.8  push-ruby-2.3.8-slim             

all: base ruby-1.8.7-all ruby-1.9.3-all ruby-2.0.0-all ruby-2.1.10-all ruby-2.2.10-all ruby-2.3.8-all

base: buildenv slim-base devel-base

push: all push-ruby-1.8.7-all push-ruby-1.9.3-all push-ruby-2.0.0-all push-ruby-2.1.10-all push-ruby-2.2.10-all push-ruby-2.3.8-all

buildenv: 
	docker build -t ruby-buildenv -f buildenv.dockerfile .

slim-base: 
	docker build -t ruby-slim-base -f slim-base.dockerfile .

devel-base: 
	docker build -t ruby-base -f devel-base.dockerfile .

ruby-1.8.7-all: ruby-1.8.7 ruby-1.8.7-slim

ruby-1.8.7:
	docker build -t ruby:1.8.7-leap -f ruby-1.8.7.dockerfile .
	docker tag ruby:1.8.7-leap docker-reg.intercom.it/intercom/ruby:1.8.7
	docker tag ruby:1.8.7-leap docker-reg.intercom.it/intercom/ruby:1.8.7-leap

ruby-1.8.7-slim:
	docker build -t ruby:1.8.7-slim-leap -f ruby-1.8.7-slim.dockerfile .
	docker tag ruby:1.8.7-slim-leap docker-reg.intercom.it/intercom/ruby:1.8.7-slim
	docker tag ruby:1.8.7-slim-leap docker-reg.intercom.it/intercom/ruby:1.8.7-slim-leap

ruby-1.9.3-all: ruby-1.9.3 ruby-1.9.3-slim

ruby-1.9.3:
	docker build -t ruby:1.9.3-leap -f ruby-1.9.3.dockerfile .
	docker tag ruby:1.9.3-leap docker-reg.intercom.it/intercom/ruby:1.9.3
	docker tag ruby:1.9.3-leap docker-reg.intercom.it/intercom/ruby:1.9.3-leap

ruby-1.9.3-slim:
	docker build -t ruby:1.9.3-slim-leap -f ruby-1.9.3-slim.dockerfile .
	docker tag ruby:1.9.3-slim-leap docker-reg.intercom.it/intercom/ruby:1.9.3-slim
	docker tag ruby:1.9.3-slim-leap docker-reg.intercom.it/intercom/ruby:1.9.3-slim-leap

ruby-2.0.0-all: ruby-2.0.0 ruby-2.0.0-slim

ruby-2.0.0:
	docker build -t ruby:2.0.0-leap -f ruby-2.0.0.dockerfile .
	docker tag ruby:2.0.0-leap docker-reg.intercom.it/intercom/ruby:2.0.0
	docker tag ruby:2.0.0-leap docker-reg.intercom.it/intercom/ruby:2.0.0-leap

ruby-2.0.0-slim:
	docker build -t ruby:2.0.0-slim-leap -f ruby-2.0.0-slim.dockerfile .
	docker tag ruby:2.0.0-slim-leap docker-reg.intercom.it/intercom/ruby:2.0.0-slim
	docker tag ruby:2.0.0-slim-leap docker-reg.intercom.it/intercom/ruby:2.0.0-slim-leap

ruby-2.1.10-all: ruby-2.1.10 ruby-2.1.10-slim

ruby-2.1.10:
	docker build -t ruby:2.1.10-leap -f ruby-2.1.10.dockerfile .
	docker tag ruby:2.1.10-leap docker-reg.intercom.it/intercom/ruby:2.1.10
	docker tag ruby:2.1.10-leap docker-reg.intercom.it/intercom/ruby:2.1.10-leap

ruby-2.1.10-slim:
	docker build -t ruby:2.1.10-slim-leap -f ruby-2.1.10-slim.dockerfile .
	docker tag ruby:2.1.10-slim-leap docker-reg.intercom.it/intercom/ruby:2.1.10-slim
	docker tag ruby:2.1.10-slim-leap docker-reg.intercom.it/intercom/ruby:2.1.10-slim-leap

ruby-2.2.10-all: ruby-2.2.10 ruby-2.2.10-slim

ruby-2.2.10:
	docker build -t ruby:2.2.10-leap -f ruby-2.2.10.dockerfile .
	docker tag ruby:2.2.10-leap docker-reg.intercom.it/intercom/ruby:2.2.10
	docker tag ruby:2.2.10-leap docker-reg.intercom.it/intercom/ruby:2.2.10-leap

ruby-2.2.10-slim:
	docker build -t ruby:2.2.10-slim-leap -f ruby-2.2.10-slim.dockerfile .
	docker tag ruby:2.2.10-slim-leap docker-reg.intercom.it/intercom/ruby:2.2.10-slim
	docker tag ruby:2.2.10-slim-leap docker-reg.intercom.it/intercom/ruby:2.2.10-slim-leap

ruby-2.3.8-all: ruby-2.3.8 ruby-2.3.8-slim

ruby-2.3.8:
	docker build -t ruby:2.3.8-leap -f ruby-2.3.8.dockerfile .
	docker tag ruby:2.3.8-leap docker-reg.intercom.it/intercom/ruby:2.3.8
	docker tag ruby:2.3.8-leap docker-reg.intercom.it/intercom/ruby:2.3.8-leap

ruby-2.3.8-slim:
	docker build -t ruby:2.3.8-slim-leap -f ruby-2.3.8-slim.dockerfile .
	docker tag ruby:2.3.8-slim-leap docker-reg.intercom.it/intercom/ruby:2.3.8-slim
	docker tag ruby:2.3.8-slim-leap docker-reg.intercom.it/intercom/ruby:2.3.8-slim-leap


push-ruby-1.8.7-all: push-ruby-1.8.7 push-ruby-1.8.7-slim

push-ruby-1.8.7: ruby-1.8.7
	docker push docker-reg.intercom.it/intercom/ruby:1.8.7
	docker push docker-reg.intercom.it/intercom/ruby:1.8.7-leap

push-ruby-1.8.7-slim: ruby-1.8.7-slim
	docker push docker-reg.intercom.it/intercom/ruby:1.8.7-slim
	docker push docker-reg.intercom.it/intercom/ruby:1.8.7-slim-leap

push-ruby-1.9.3-all: push-ruby-1.9.3 push-ruby-1.9.3-slim

push-ruby-1.9.3: ruby-1.9.3
	docker push docker-reg.intercom.it/intercom/ruby:1.9.3
	docker push docker-reg.intercom.it/intercom/ruby:1.9.3-leap

push-ruby-1.9.3-slim: ruby-1.9.3-slim
	docker push docker-reg.intercom.it/intercom/ruby:1.9.3-slim
	docker push docker-reg.intercom.it/intercom/ruby:1.9.3-slim-leap

push-ruby-2.0.0-all: push-ruby-2.0.0 push-ruby-2.0.0-slim

push-ruby-2.0.0: ruby-2.0.0
	docker push docker-reg.intercom.it/intercom/ruby:2.0.0
	docker push docker-reg.intercom.it/intercom/ruby:2.0.0-leap

push-ruby-2.0.0-slim: ruby-2.0.0-slim
	docker push docker-reg.intercom.it/intercom/ruby:2.0.0-slim
	docker push docker-reg.intercom.it/intercom/ruby:2.0.0-slim-leap

push-ruby-2.1.10: push-ruby-2.1.10 push-ruby-2.1.10-slim

push-ruby-2.1.10-all: ruby-2.1.10
	docker push docker-reg.intercom.it/intercom/ruby:2.1.10
	docker push docker-reg.intercom.it/intercom/ruby:2.1.10-leap

push-ruby-2.1.10-slim: ruby-2.1.10-slim
	docker push docker-reg.intercom.it/intercom/ruby:2.1.10-slim
	docker push docker-reg.intercom.it/intercom/ruby:2.1.10-slim-leap

push-ruby-2.2.10-all: push-ruby-2.2.10 push-ruby-2.2.10-slim

push-ruby-2.2.10: ruby-2.2.10
	docker push docker-reg.intercom.it/intercom/ruby:2.2.10
	docker push docker-reg.intercom.it/intercom/ruby:2.2.10-leap

push-ruby-2.2.10-slim: ruby-2.2.10-slim
	docker push docker-reg.intercom.it/intercom/ruby:2.2.10-slim
	docker push docker-reg.intercom.it/intercom/ruby:2.2.10-slim-leap

push-ruby-2.3.8-all: push-ruby-2.3.8 push-ruby-2.3.8-slim

push-ruby-2.3.8: ruby-2.3.8
	docker push docker-reg.intercom.it/intercom/ruby:2.3.8
	docker push docker-reg.intercom.it/intercom/ruby:2.3.8-leap

push-ruby-2.3.8-slim: ruby-2.3.8-slim
	docker push docker-reg.intercom.it/intercom/ruby:2.3.8-slim
	docker push docker-reg.intercom.it/intercom/ruby:2.3.8-slim-leap