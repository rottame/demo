.PHONY: all base buildenv devel-base slim-base push clean
.PHONY: ruby-1.8.7  ruby-1.8.7-dev  ruby-1.8.7-slim
.PHONY: ruby-1.9.3  ruby-1.9.3-dev  ruby-1.9.3-slim
.PHONY: ruby-2.0.0  ruby-2.0.0-dev  ruby-2.0.0-slim
.PHONY: ruby-2.1.10 ruby-2.1.10-dev ruby-2.1.10-slim
.PHONY: ruby-2.2.10 ruby-2.2.10-dev ruby-2.2.10-slim
.PHONY: ruby-2.3.8  ruby-2.3.8-dev  ruby-2.3.8-slim
.PHONY: push-ruby-1.8.7  push-ruby-1.8.7-dev  push-ruby-1.8.7-slim              
.PHONY: push-ruby-1.9.3  push-ruby-1.9.3-dev  push-ruby-1.9.3-slim              
.PHONY: push-ruby-2.0.0  push-ruby-2.0.0-dev  push-ruby-2.0.0-slim              
.PHONY: push-ruby-2.1.10 push-ruby-2.1.10-dev push-ruby-2.1.10-slim                
.PHONY: push-ruby-2.2.10 push-ruby-2.2.10-dev push-ruby-2.2.10-slim                
.PHONY: push-ruby-2.3.8  push-ruby-2.3.8-dev  push-ruby-2.3.8-slim             

R_25_VERSION=2.5.8
R_26_VERSION=2.6.6
R_27_VERSION=2.7.1

all: base ruby-1.8.7 ruby-1.9.3 ruby-2.0.0 ruby-2.1.10 ruby-2.2.10 ruby-2.3.8 \
			ruby-2.4.10 ruby-2.5 ruby-2.6 ruby-2.7 

base: buildenv slim-base devel-base

push: all push-ruby-1.8.7 push-ruby-1.9.3 push-ruby-2.0.0 push-ruby-2.1.10 push-ruby-2.2.10 \
			push-ruby-2.3.8 push-ruby-2.4.10 push-ruby-2.5 push-ruby-2.6 push-ruby-2.7

clean:
	docker image rm \
		docker-reg.intercom.it/intercom/ruby:2.3.8-slim-leap \
		docker-reg.intercom.it/intercom/ruby:2.3.8-slim \
		ruby:2.3.8-slim-leap \
		docker-reg.intercom.it/intercom/ruby:2.3.8-leap \
		docker-reg.intercom.it/intercom/ruby:2.3.8 \
		ruby:2.3.8-leap \
		docker-reg.intercom.it/intercom/ruby:2.2.10-slim-leap \
		docker-reg.intercom.it/intercom/ruby:2.2.10-slim \
		ruby:2.2.10-slim-leap \
		docker-reg.intercom.it/intercom/ruby:2.2.10-leap \
		docker-reg.intercom.it/intercom/ruby:2.2.10 \
		ruby:2.2.10-leap \
		docker-reg.intercom.it/intercom/ruby:2.1.10-slim-leap \
		docker-reg.intercom.it/intercom/ruby:2.1.10-slim \
		ruby:2.1.10-slim-leap \
		docker-reg.intercom.it/intercom/ruby:2.1.10-leap \
		docker-reg.intercom.it/intercom/ruby:2.1.10 \
		ruby:2.1.10-leap \
		docker-reg.intercom.it/intercom/ruby:2.0.0-slim-leap \
		docker-reg.intercom.it/intercom/ruby:2.0.0-slim \
		ruby:2.0.0-slim-leap \
		docker-reg.intercom.it/intercom/ruby:2.0.0-leap \
		docker-reg.intercom.it/intercom/ruby:2.0.0 \
		ruby:2.0.0-leap \
		docker-reg.intercom.it/intercom/ruby:1.9.3-slim-leap \
		docker-reg.intercom.it/intercom/ruby:1.9.3-slim \
		ruby:1.9.3-slim-leap \
		docker-reg.intercom.it/intercom/ruby:1.9.3-leap \
		docker-reg.intercom.it/intercom/ruby:1.9.3 \
		ruby:1.9.3-leap \
		docker-reg.intercom.it/intercom/ruby:1.8.7-slim-leap \
		docker-reg.intercom.it/intercom/ruby:1.8.7-slim \
		ruby:1.8.7-slim-leap \
		docker-reg.intercom.it/intercom/ruby:1.8.7-leap \
		docker-reg.intercom.it/intercom/ruby:1.8.7 \
		ruby:1.8.7-leap \
		ruby-slim-base:latest \
		ruby-base:latest \
		ruby-buildenv:latest || true
	docker image rm `docker image ls docker-reg.intercom.it/intercom/ruby --format "{{.ID}}"`

buildenv: 
	docker build -t ruby-buildenv -f buildenv.dockerfile .

slim-base: 
	docker build -t ruby-slim-base -f slim-base.dockerfile .

devel-base: 
	docker build -t ruby-base -f devel-base.dockerfile .


ruby-1.8.7: ruby-1.8.7-dev ruby-1.8.7-slim

ruby-1.8.7-dev: buildenv devel-base
	docker build -t ruby:1.8.7-leap -f ruby-1.8.7.dockerfile .
	docker tag ruby:1.8.7-leap docker-reg.intercom.it/intercom/ruby:1.8.7
	docker tag ruby:1.8.7-leap docker-reg.intercom.it/intercom/ruby:1.8.7-leap

ruby-1.8.7-slim: slim-base ruby-1.8.7-dev
	docker build -t ruby:1.8.7-slim-leap -f ruby-1.8.7-slim.dockerfile .
	docker tag ruby:1.8.7-slim-leap docker-reg.intercom.it/intercom/ruby:1.8.7-slim
	docker tag ruby:1.8.7-slim-leap docker-reg.intercom.it/intercom/ruby:1.8.7-slim-leap

ruby-1.9.3: ruby-1.9.3-dev ruby-1.9.3-slim

ruby-1.9.3-dev: buildenv devel-base
	docker build -t ruby:1.9.3-leap -f ruby-1.9.3.dockerfile .
	docker tag ruby:1.9.3-leap docker-reg.intercom.it/intercom/ruby:1.9.3
	docker tag ruby:1.9.3-leap docker-reg.intercom.it/intercom/ruby:1.9.3-leap

ruby-1.9.3-slim: slim-base ruby-1.9.3-dev
	docker build -t ruby:1.9.3-slim-leap -f ruby-1.9.3-slim.dockerfile .
	docker tag ruby:1.9.3-slim-leap docker-reg.intercom.it/intercom/ruby:1.9.3-slim
	docker tag ruby:1.9.3-slim-leap docker-reg.intercom.it/intercom/ruby:1.9.3-slim-leap

ruby-2.0.0: ruby-2.0.0-dev ruby-2.0.0-slim

ruby-2.0.0-dev: buildenv devel-base
	docker build -t ruby:2.0.0-leap -f ruby-2.0.0.dockerfile .
	docker tag ruby:2.0.0-leap docker-reg.intercom.it/intercom/ruby:2.0.0
	docker tag ruby:2.0.0-leap docker-reg.intercom.it/intercom/ruby:2.0.0-leap

ruby-2.0.0-slim: slim-base ruby-2.0.0-dev
	docker build -t ruby:2.0.0-slim-leap -f ruby-2.0.0-slim.dockerfile .
	docker tag ruby:2.0.0-slim-leap docker-reg.intercom.it/intercom/ruby:2.0.0-slim
	docker tag ruby:2.0.0-slim-leap docker-reg.intercom.it/intercom/ruby:2.0.0-slim-leap

ruby-2.1.10: ruby-2.1.10-dev ruby-2.1.10-slim

ruby-2.1.10-dev: buildenv devel-base
	docker build -t ruby:2.1.10-leap -f ruby-2.1.10.dockerfile .
	docker tag ruby:2.1.10-leap docker-reg.intercom.it/intercom/ruby:2.1.10
	docker tag ruby:2.1.10-leap docker-reg.intercom.it/intercom/ruby:2.1.10-leap

ruby-2.1.10-slim: slim-base ruby-2.1.10-dev
	docker build -t ruby:2.1.10-slim-leap -f ruby-2.1.10-slim.dockerfile .
	docker tag ruby:2.1.10-slim-leap docker-reg.intercom.it/intercom/ruby:2.1.10-slim
	docker tag ruby:2.1.10-slim-leap docker-reg.intercom.it/intercom/ruby:2.1.10-slim-leap

ruby-2.2.10: ruby-2.2.10-dev ruby-2.2.10-slim

ruby-2.2.10-dev: buildenv devel-base
	docker build -t ruby:2.2.10-leap -f ruby-2.2.10.dockerfile .
	docker tag ruby:2.2.10-leap docker-reg.intercom.it/intercom/ruby:2.2.10
	docker tag ruby:2.2.10-leap docker-reg.intercom.it/intercom/ruby:2.2.10-leap

ruby-2.2.10-slim: slim-base ruby-2.2.10-dev
	docker build -t ruby:2.2.10-slim-leap -f ruby-2.2.10-slim.dockerfile .
	docker tag ruby:2.2.10-slim-leap docker-reg.intercom.it/intercom/ruby:2.2.10-slim
	docker tag ruby:2.2.10-slim-leap docker-reg.intercom.it/intercom/ruby:2.2.10-slim-leap

ruby-2.3.8: ruby-2.3.8-dev ruby-2.3.8-slim

ruby-2.3.8-dev: buildenv devel-base
	docker build -t ruby:2.3.8-leap -f ruby-2.3.8.dockerfile .
	docker tag ruby:2.3.8-leap docker-reg.intercom.it/intercom/ruby:2.3.8
	docker tag ruby:2.3.8-leap docker-reg.intercom.it/intercom/ruby:2.3.8-leap

ruby-2.3.8-slim: slim-base ruby-2.3.8-dev
	docker build -t ruby:2.3.8-slim-leap -f ruby-2.3.8-slim.dockerfile .
	docker tag ruby:2.3.8-slim-leap docker-reg.intercom.it/intercom/ruby:2.3.8-slim
	docker tag ruby:2.3.8-slim-leap docker-reg.intercom.it/intercom/ruby:2.3.8-slim-leap




buildenv-new: 
	docker build -t ruby-buildenv-new -f buildenv-new.dockerfile .

slim-base-new: 
	docker build -t ruby-slim-base-new -f slim-base-new.dockerfile .

devel-base-new: slim-base-new
	docker build -t ruby-base-new -f devel-base-new.dockerfile .

ruby-2.4.10: ruby-2.4.10-dev ruby-2.4.10-slim

ruby-2.4.10-dev: buildenv-new devel-base-new
	docker build -t ruby:2.4-leap -f ruby-2.4.dockerfile .
	docker tag ruby:2.4-leap docker-reg.intercom.it/intercom/ruby:2.4
	docker tag ruby:2.4-leap docker-reg.intercom.it/intercom/ruby:2.4-leap

ruby-2.4.10-slim: slim-base-new ruby-2.4.10-dev
	docker build -t ruby:2.4-slim-leap -f ruby-2.4-slim.dockerfile .
	docker tag ruby:2.4-slim-leap docker-reg.intercom.it/intercom/ruby:2.4-slim
	docker tag ruby:2.4-slim-leap docker-reg.intercom.it/intercom/ruby:2.4-slim-leap

ruby-2.5: ruby-2.5-dev ruby-2.5-slim

ruby-2.5-dev: buildenv-new devel-base-new
	docker build --build-arg VERSION=${R_25_VERSION} -t ruby:2.5-leap -f ruby-2.5.dockerfile .
	docker tag ruby:2.5-leap docker-reg.intercom.it/intercom/ruby:${R_25_VERSION}
	docker tag ruby:2.5-leap docker-reg.intercom.it/intercom/ruby:${R_25_VERSION}-leap

ruby-2.5-slim: slim-base-new ruby-2.5-dev
	docker build -t ruby:2.5-slim-leap -f ruby-2.5-slim.dockerfile .
	docker tag ruby:2.5-slim-leap docker-reg.intercom.it/intercom/ruby:${R_25_VERSION}-slim
	docker tag ruby:2.5-slim-leap docker-reg.intercom.it/intercom/ruby:${R_25_VERSION}-slim-leap

ruby-2.6: ruby-2.6-dev ruby-2.6-slim

ruby-2.6-dev: buildenv-new devel-base-new
	docker build --build-arg VERSION=${R_26_VERSION} -t ruby:2.6-leap -f ruby-2.6.dockerfile .
	docker tag ruby:2.6-leap docker-reg.intercom.it/intercom/ruby:${R_26_VERSION}
	docker tag ruby:2.6-leap docker-reg.intercom.it/intercom/ruby:${R_26_VERSION}-leap

ruby-2.6-slim: slim-base-new ruby-2.6-dev
	docker build -t ruby:2.6-slim-leap -f ruby-2.6-slim.dockerfile .
	docker tag ruby:2.6-slim-leap docker-reg.intercom.it/intercom/ruby:${R_26_VERSION}-slim
	docker tag ruby:2.6-slim-leap docker-reg.intercom.it/intercom/ruby:${R_26_VERSION}-slim-leap

ruby-2.7: ruby-2.7-dev ruby-2.7-slim

ruby-2.7-dev: buildenv-new devel-base-new
	docker build --build-arg VERSION=${R_27_VERSION} -t ruby:2.7-leap -f ruby-2.7.dockerfile .
	docker tag ruby:2.7-leap docker-reg.intercom.it/intercom/ruby:${R_27_VERSION}
	docker tag ruby:2.7-leap docker-reg.intercom.it/intercom/ruby:${R_27_VERSION}-leap

ruby-2.7-slim: slim-base-new ruby-2.7-dev
	docker build -t ruby:2.7-slim-leap -f ruby-2.7-slim.dockerfile .
	docker tag ruby:2.7-slim-leap docker-reg.intercom.it/intercom/ruby:${R_27_VERSION}-slim
	docker tag ruby:2.7-slim-leap docker-reg.intercom.it/intercom/ruby:${R_27_VERSION}-slim-leap





push-ruby-1.8.7: push-ruby-1.8.7-dev push-ruby-1.8.7-slim

push-ruby-1.8.7-dev: ruby-1.8.7-dev
	docker push docker-reg.intercom.it/intercom/ruby:1.8.7
	docker push docker-reg.intercom.it/intercom/ruby:1.8.7-leap

push-ruby-1.8.7-slim: ruby-1.8.7-slim
	docker push docker-reg.intercom.it/intercom/ruby:1.8.7-slim
	docker push docker-reg.intercom.it/intercom/ruby:1.8.7-slim-leap

push-ruby-1.9.3: push-ruby-1.9.3-dev push-ruby-1.9.3-slim

push-ruby-1.9.3-dev: ruby-1.9.3-dev
	docker push docker-reg.intercom.it/intercom/ruby:1.9.3
	docker push docker-reg.intercom.it/intercom/ruby:1.9.3-leap

push-ruby-1.9.3-slim: ruby-1.9.3-slim
	docker push docker-reg.intercom.it/intercom/ruby:1.9.3-slim
	docker push docker-reg.intercom.it/intercom/ruby:1.9.3-slim-leap

push-ruby-2.0.0: push-ruby-2.0.0-dev push-ruby-2.0.0-slim

push-ruby-2.0.0-dev: ruby-2.0.0-dev
	docker push docker-reg.intercom.it/intercom/ruby:2.0.0
	docker push docker-reg.intercom.it/intercom/ruby:2.0.0-leap

push-ruby-2.0.0-slim: ruby-2.0.0-slim
	docker push docker-reg.intercom.it/intercom/ruby:2.0.0-slim
	docker push docker-reg.intercom.it/intercom/ruby:2.0.0-slim-leap

push-ruby-2.1.10: push-ruby-2.1.10-dev push-ruby-2.1.10-slim

push-ruby-2.1.10-dev: ruby-2.1.10-dev
	docker push docker-reg.intercom.it/intercom/ruby:2.1.10
	docker push docker-reg.intercom.it/intercom/ruby:2.1.10-leap

push-ruby-2.1.10-slim: ruby-2.1.10-slim
	docker push docker-reg.intercom.it/intercom/ruby:2.1.10-slim
	docker push docker-reg.intercom.it/intercom/ruby:2.1.10-slim-leap

push-ruby-2.2.10: push-ruby-2.2.10-dev push-ruby-2.2.10-slim

push-ruby-2.2.10-dev: ruby-2.2.10-dev
	docker push docker-reg.intercom.it/intercom/ruby:2.2.10
	docker push docker-reg.intercom.it/intercom/ruby:2.2.10-leap

push-ruby-2.2.10-slim: ruby-2.2.10-slim
	docker push docker-reg.intercom.it/intercom/ruby:2.2.10-slim
	docker push docker-reg.intercom.it/intercom/ruby:2.2.10-slim-leap

push-ruby-2.3.8: push-ruby-2.3.8-dev push-ruby-2.3.8-slim

push-ruby-2.3.8-dev: ruby-2.3.8-dev
	docker push docker-reg.intercom.it/intercom/ruby:2.3.8
	docker push docker-reg.intercom.it/intercom/ruby:2.3.8-leap

push-ruby-2.3.8-slim: ruby-2.3.8-slim
	docker push docker-reg.intercom.it/intercom/ruby:2.3.8-slim
	docker push docker-reg.intercom.it/intercom/ruby:2.3.8-slim-leap

push-ruby-2.4.10: push-ruby-2.4.10-dev push-ruby-2.4.10-slim

push-ruby-2.4.10-dev: ruby-2.4.10-dev
	docker push docker-reg.intercom.it/intercom/ruby:2.4
	docker push docker-reg.intercom.it/intercom/ruby:2.4-leap

push-ruby-2.4.10-slim: ruby-2.4.10-slim
	docker push docker-reg.intercom.it/intercom/ruby:2.4-slim
	docker push docker-reg.intercom.it/intercom/ruby:2.4-slim-leap

push-ruby-2.5: push-ruby-2.5-dev push-ruby-2.5-slim

push-ruby-2.5-dev: ruby-2.5-dev
	docker push docker-reg.intercom.it/intercom/ruby:${R_25_VERSION}
	docker push docker-reg.intercom.it/intercom/ruby:${R_25_VERSION}-leap

push-ruby-2.5-slim: ruby-2.5-slim
	docker push docker-reg.intercom.it/intercom/ruby:${R_25_VERSION}-slim
	docker push docker-reg.intercom.it/intercom/ruby:${R_25_VERSION}-slim-leap

push-ruby-2.6: push-ruby-2.6-dev push-ruby-2.6-slim

push-ruby-2.6-dev: ruby-2.6-dev
	docker push docker-reg.intercom.it/intercom/ruby:${R_26_VERSION}
	docker push docker-reg.intercom.it/intercom/ruby:${R_26_VERSION}-leap

push-ruby-2.6-slim: ruby-2.6-slim
	docker push docker-reg.intercom.it/intercom/ruby:${R_26_VERSION}-slim
	docker push docker-reg.intercom.it/intercom/ruby:${R_26_VERSION}-slim-leap

push-ruby-2.7: push-ruby-2.7-dev push-ruby-2.7-slim

push-ruby-2.7-dev: ruby-2.7-dev
	docker push docker-reg.intercom.it/intercom/ruby:${R_27_VERSION}
	docker push docker-reg.intercom.it/intercom/ruby:${R_27_VERSION}-leap

push-ruby-2.7-slim: ruby-2.7-slim
	docker push docker-reg.intercom.it/intercom/ruby:${R_27_VERSION}-slim
	docker push docker-reg.intercom.it/intercom/ruby:${R_27_VERSION}-slim-leap