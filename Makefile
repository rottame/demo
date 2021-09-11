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

R_25_VERSION=2.5.9
R_26_VERSION=2.6.8
R_27_VERSION=2.7.4
LEAP_VERSION=15.3
$(eval DATE=$(shell date +%Y%m%d))


all: base ruby-1.9.3 ruby-2.0.0 ruby-2.1.10 ruby-2.2.10 ruby-2.3.8 \
			ruby-2.4.10 ruby-2.5 ruby-2.6 ruby-2.7 

base: buildenv slim-base devel-base

push: all push-ruby-1.9.3 push-ruby-2.0.0 push-ruby-2.1.10 push-ruby-2.2.10 \
			push-ruby-2.3.8 push-ruby-2.4.10 push-ruby-2.5 push-ruby-2.6 push-ruby-2.7

clean:
	docker image rm \
		docker-reg.intercom.it/intercom/ruby:${R_25_VERSION} \
		docker-reg.intercom.it/intercom/ruby:${R_25_VERSION}-leap \
		docker-reg.intercom.it/intercom/ruby:${R_25_VERSION}-leap${LEAP_VERSION} \
		docker-reg.intercom.it/intercom/ruby:2.5 \
		docker-reg.intercom.it/intercom/ruby:2.5-leap \
		docker-reg.intercom.it/intercom/ruby:2.5-leap${LEAP_VERSION} \
		ruby:2.5-leap${LEAP_VERSION} \
		docker-reg.intercom.it/intercom/ruby:${R_26_VERSION} \
		docker-reg.intercom.it/intercom/ruby:${R_26_VERSION}-leap \
		docker-reg.intercom.it/intercom/ruby:${R_26_VERSION}-leap${LEAP_VERSION} \
		docker-reg.intercom.it/intercom/ruby:2.6 \
		docker-reg.intercom.it/intercom/ruby:2.6-leap \
		docker-reg.intercom.it/intercom/ruby:2.6-leap${LEAP_VERSION} \
		ruby:2.6-leap${LEAP_VERSION} \
		docker-reg.intercom.it/intercom/ruby:${R_27_VERSION} \
		docker-reg.intercom.it/intercom/ruby:${R_27_VERSION}-leap \
		docker-reg.intercom.it/intercom/ruby:${R_27_VERSION}-leap${LEAP_VERSION} \
		docker-reg.intercom.it/intercom/ruby:2.7 \
		docker-reg.intercom.it/intercom/ruby:2.7-leap \
		docker-reg.intercom.it/intercom/ruby:2.7-leap${LEAP_VERSION} \
		ruby:2.7-leap${LEAP_VERSION} \
		docker-reg.intercom.it/intercom/ruby:2.3.8-slim-leap \
		docker-reg.intercom.it/intercom/ruby:2.3.8-slim-leap${LEAP_VERSION} \
		docker-reg.intercom.it/intercom/ruby:2.3.8-slim \
		ruby:2.3.8-slim-leap${LEAP_VERSION} \
		docker-reg.intercom.it/intercom/ruby:2.3.8-leap \
		docker-reg.intercom.it/intercom/ruby:2.3.8-leap${LEAP_VERSION} \
		docker-reg.intercom.it/intercom/ruby:2.3.8 \
		ruby:2.3.8-leap${LEAP_VERSION} \
		docker-reg.intercom.it/intercom/ruby:2.2.10-slim-leap \
		docker-reg.intercom.it/intercom/ruby:2.2.10-slim-leap${LEAP_VERSION} \
		docker-reg.intercom.it/intercom/ruby:2.2.10-slim \
		ruby:2.2.10-slim-leap${LEAP_VERSION} \
		docker-reg.intercom.it/intercom/ruby:2.2.10-leap \
		docker-reg.intercom.it/intercom/ruby:2.2.10-leap${LEAP_VERSION} \
		docker-reg.intercom.it/intercom/ruby:2.2.10 \
		ruby:2.2.10-leap${LEAP_VERSION} \
		docker-reg.intercom.it/intercom/ruby:2.1.10-slim-leap \
		docker-reg.intercom.it/intercom/ruby:2.1.10-slim-leap${LEAP_VERSION} \
		docker-reg.intercom.it/intercom/ruby:2.1.10-slim \
		ruby:2.1.10-slim-leap${LEAP_VERSION} \
		docker-reg.intercom.it/intercom/ruby:2.1.10-leap \
		docker-reg.intercom.it/intercom/ruby:2.1.10-leap${LEAP_VERSION} \
		docker-reg.intercom.it/intercom/ruby:2.1.10 \
		ruby:2.1.10-leap${LEAP_VERSION} \
		docker-reg.intercom.it/intercom/ruby:2.0.0-slim-leap \
		docker-reg.intercom.it/intercom/ruby:2.0.0-slim-leap${LEAP_VERSION} \
		docker-reg.intercom.it/intercom/ruby:2.0.0-slim \
		ruby:2.0.0-slim-leap${LEAP_VERSION} \
		docker-reg.intercom.it/intercom/ruby:2.0.0-leap \
		docker-reg.intercom.it/intercom/ruby:2.0.0-leap${LEAP_VERSION} \
		docker-reg.intercom.it/intercom/ruby:2.0.0 \
		ruby:2.0.0-leap${LEAP_VERSION} \
		docker-reg.intercom.it/intercom/ruby:1.9.3-slim-leap \
		docker-reg.intercom.it/intercom/ruby:1.9.3-slim-leap${LEAP_VERSION} \
		docker-reg.intercom.it/intercom/ruby:1.9.3-slim \
		ruby:1.9.3-slim-leap${LEAP_VERSION} \
		docker-reg.intercom.it/intercom/ruby:1.9.3-leap \
		docker-reg.intercom.it/intercom/ruby:1.9.3-leap${LEAP_VERSION} \
		docker-reg.intercom.it/intercom/ruby:1.9.3 \
		ruby:1.9.3-leap${LEAP_VERSION} \
		docker-reg.intercom.it/intercom/ruby:1.8.7-slim-leap \
		docker-reg.intercom.it/intercom/ruby:1.8.7-slim-leap${LEAP_VERSION} \
		docker-reg.intercom.it/intercom/ruby:1.8.7-slim \
		ruby:1.8.7-slim-leap${LEAP_VERSION} \
		docker-reg.intercom.it/intercom/ruby:1.8.7-leap \
		docker-reg.intercom.it/intercom/ruby:1.8.7-leap${LEAP_VERSION} \
		docker-reg.intercom.it/intercom/ruby:1.8.7 \
		ruby:1.8.7-leap${LEAP_VERSION} \
		ruby-slim-base:latest-${LEAP_VERSION} \
		ruby-base:latest-${LEAP_VERSION} \
		ruby-buildenv-base:latest-${LEAP_VERSION} \
		ruby-buildenv-mc2:latest-${LEAP_VERSION} \
		ruby-buildenv-mc3:latest-${LEAP_VERSION} || true
	docker image rm `docker image ls docker-reg.intercom.it/intercom/ruby --format "{{.ID}}"`

buildenv: 
	docker build  \
		--build-arg LEAP_VERSION=${LEAP_VERSION} \
		-t ruby-buildenv-base-${LEAP_VERSION} -f buildenv.dockerfile . || exit 1
	docker build  \
		--build-arg LEAP_VERSION=${LEAP_VERSION} \
		-t ruby-buildenv-mc2-${LEAP_VERSION} -f buildenv-mariadb-connector-2.dockerfile . || exit 1
	docker build  \
		--build-arg LEAP_VERSION=${LEAP_VERSION} \
		-t ruby-buildenv-mc3-${LEAP_VERSION} -f buildenv-mariadb-connector-3.dockerfile . || exit 1

slim-base: 
	docker build  \
		--build-arg LEAP_VERSION=${LEAP_VERSION} \
		-t ruby-slim-base-${LEAP_VERSION} -f slim-base.dockerfile . || exit 1

devel-base: 
	docker build  \
		--build-arg LEAP_VERSION=${LEAP_VERSION} \
		-t ruby-base-${LEAP_VERSION} -f devel-base.dockerfile . || exit 1


ruby-1.8.7: ruby-1.8.7-dev ruby-1.8.7-slim

ruby-1.8.7-dev: buildenv devel-base
	docker build \
		--build-arg LEAP_VERSION=${LEAP_VERSION} \
		-t ruby:1.8.7-leap${LEAP_VERSION} -f ruby-1.8.7.dockerfile . || exit 1
	docker tag ruby:1.8.7-leap${LEAP_VERSION} docker-reg.intercom.it/intercom/ruby:1.8.7
	docker tag ruby:1.8.7-leap${LEAP_VERSION} docker-reg.intercom.it/intercom/ruby:1.8.7-leap
	docker tag ruby:1.8.7-leap${LEAP_VERSION} docker-reg.intercom.it/intercom/ruby:1.8.7-leap${LEAP_VERSION}
	docker tag ruby:1.8.7-leap${LEAP_VERSION} docker-reg.intercom.it/intercom/ruby:1.8.7-leap${LEAP_VERSION}-${DATE}

ruby-1.8.7-slim: slim-base ruby-1.8.7-dev
	docker build \
		--build-arg LEAP_VERSION=${LEAP_VERSION} \
		-t ruby:1.8.7-slim-leap${LEAP_VERSION} -f ruby-1.8.7-slim.dockerfile . || exit 1
	docker tag ruby:1.8.7-slim-leap${LEAP_VERSION} docker-reg.intercom.it/intercom/ruby:1.8.7-slim
	docker tag ruby:1.8.7-slim-leap${LEAP_VERSION} docker-reg.intercom.it/intercom/ruby:1.8.7-slim-leap
	docker tag ruby:1.8.7-slim-leap${LEAP_VERSION} docker-reg.intercom.it/intercom/ruby:1.8.7-slim-leap${LEAP_VERSION}
	docker tag ruby:1.8.7-slim-leap${LEAP_VERSION} docker-reg.intercom.it/intercom/ruby:1.8.7-slim-leap${LEAP_VERSION}-${DATE}

ruby-1.9.3: ruby-1.9.3-dev ruby-1.9.3-slim

ruby-1.9.3-dev: buildenv devel-base
	docker build \
		--build-arg LEAP_VERSION=${LEAP_VERSION} \
		-t ruby:1.9.3-leap${LEAP_VERSION} -f ruby-1.9.3.dockerfile . || exit 1
	docker tag ruby:1.9.3-leap${LEAP_VERSION} docker-reg.intercom.it/intercom/ruby:1.9.3
	docker tag ruby:1.9.3-leap${LEAP_VERSION} docker-reg.intercom.it/intercom/ruby:1.9.3-leap
	docker tag ruby:1.9.3-leap${LEAP_VERSION} docker-reg.intercom.it/intercom/ruby:1.9.3-leap${LEAP_VERSION}
	docker tag ruby:1.9.3-leap${LEAP_VERSION} docker-reg.intercom.it/intercom/ruby:1.9.3-leap${LEAP_VERSION}-${DATE}

ruby-1.9.3-slim: slim-base ruby-1.9.3-dev
	docker build \
		--build-arg LEAP_VERSION=${LEAP_VERSION} \
		-t ruby:1.9.3-slim-leap${LEAP_VERSION} -f ruby-1.9.3-slim.dockerfile . || exit 1
	docker tag ruby:1.9.3-slim-leap${LEAP_VERSION} docker-reg.intercom.it/intercom/ruby:1.9.3-slim
	docker tag ruby:1.9.3-slim-leap${LEAP_VERSION} docker-reg.intercom.it/intercom/ruby:1.9.3-slim-leap
	docker tag ruby:1.9.3-slim-leap${LEAP_VERSION} docker-reg.intercom.it/intercom/ruby:1.9.3-slim-leap${LEAP_VERSION}
	docker tag ruby:1.9.3-slim-leap${LEAP_VERSION} docker-reg.intercom.it/intercom/ruby:1.9.3-slim-leap${LEAP_VERSION}-${DATE}

ruby-2.0.0: ruby-2.0.0-dev ruby-2.0.0-slim

ruby-2.0.0-dev: buildenv devel-base
	docker build \
		--build-arg LEAP_VERSION=${LEAP_VERSION} \
		-t ruby:2.0.0-leap${LEAP_VERSION} -f ruby-2.0.0.dockerfile . || exit 1
	docker tag ruby:2.0.0-leap${LEAP_VERSION} docker-reg.intercom.it/intercom/ruby:2.0.0
	docker tag ruby:2.0.0-leap${LEAP_VERSION} docker-reg.intercom.it/intercom/ruby:2.0.0-leap
	docker tag ruby:2.0.0-leap${LEAP_VERSION} docker-reg.intercom.it/intercom/ruby:2.0.0-leap${LEAP_VERSION}
	docker tag ruby:2.0.0-leap${LEAP_VERSION} docker-reg.intercom.it/intercom/ruby:2.0.0-leap${LEAP_VERSION}-${DATE}

ruby-2.0.0-slim: slim-base ruby-2.0.0-dev
	docker build \
		--build-arg LEAP_VERSION=${LEAP_VERSION} \
		-t ruby:2.0.0-slim-leap${LEAP_VERSION} -f ruby-2.0.0-slim.dockerfile . || exit 1
	docker tag ruby:2.0.0-slim-leap${LEAP_VERSION} docker-reg.intercom.it/intercom/ruby:2.0.0-slim
	docker tag ruby:2.0.0-slim-leap${LEAP_VERSION} docker-reg.intercom.it/intercom/ruby:2.0.0-slim-leap
	docker tag ruby:2.0.0-slim-leap${LEAP_VERSION} docker-reg.intercom.it/intercom/ruby:2.0.0-slim-leap${LEAP_VERSION}
	docker tag ruby:2.0.0-slim-leap${LEAP_VERSION} docker-reg.intercom.it/intercom/ruby:2.0.0-slim-leap${LEAP_VERSION}-${DATE}

ruby-2.1.10: ruby-2.1.10-dev ruby-2.1.10-slim

ruby-2.1.10-dev: buildenv devel-base
	docker build \
		--build-arg LEAP_VERSION=${LEAP_VERSION} \
		-t ruby:2.1.10-leap${LEAP_VERSION} -f ruby-2.1.10.dockerfile . || exit 1
	docker tag ruby:2.1.10-leap${LEAP_VERSION} docker-reg.intercom.it/intercom/ruby:2.1.10
	docker tag ruby:2.1.10-leap${LEAP_VERSION} docker-reg.intercom.it/intercom/ruby:2.1.10-leap
	docker tag ruby:2.1.10-leap${LEAP_VERSION} docker-reg.intercom.it/intercom/ruby:2.1.10-leap${LEAP_VERSION}
	docker tag ruby:2.1.10-leap${LEAP_VERSION} docker-reg.intercom.it/intercom/ruby:2.1.10-leap${LEAP_VERSION}-${DATE}

ruby-2.1.10-slim: slim-base ruby-2.1.10-dev
	docker build \
		--build-arg LEAP_VERSION=${LEAP_VERSION} \
		-t ruby:2.1.10-slim-leap${LEAP_VERSION} -f ruby-2.1.10-slim.dockerfile . || exit 1
	docker tag ruby:2.1.10-slim-leap${LEAP_VERSION} docker-reg.intercom.it/intercom/ruby:2.1.10-slim
	docker tag ruby:2.1.10-slim-leap${LEAP_VERSION} docker-reg.intercom.it/intercom/ruby:2.1.10-slim-leap
	docker tag ruby:2.1.10-slim-leap${LEAP_VERSION} docker-reg.intercom.it/intercom/ruby:2.1.10-slim-leap${LEAP_VERSION}
	docker tag ruby:2.1.10-slim-leap${LEAP_VERSION} docker-reg.intercom.it/intercom/ruby:2.1.10-slim-leap${LEAP_VERSION}-${DATE}

ruby-2.2.10: ruby-2.2.10-dev ruby-2.2.10-slim

ruby-2.2.10-dev: buildenv devel-base
	docker build \
		--build-arg LEAP_VERSION=${LEAP_VERSION} \
		-t ruby:2.2.10-leap${LEAP_VERSION} -f ruby-2.2.10.dockerfile . || exit 1
	docker tag ruby:2.2.10-leap${LEAP_VERSION} docker-reg.intercom.it/intercom/ruby:2.2.10
	docker tag ruby:2.2.10-leap${LEAP_VERSION} docker-reg.intercom.it/intercom/ruby:2.2.10-leap
	docker tag ruby:2.2.10-leap${LEAP_VERSION} docker-reg.intercom.it/intercom/ruby:2.2.10-leap${LEAP_VERSION}
	docker tag ruby:2.2.10-leap${LEAP_VERSION} docker-reg.intercom.it/intercom/ruby:2.2.10-leap${LEAP_VERSION}-${DATE}

ruby-2.2.10-slim: slim-base ruby-2.2.10-dev
	docker build \
		--build-arg LEAP_VERSION=${LEAP_VERSION} \
		-t ruby:2.2.10-slim-leap${LEAP_VERSION} -f ruby-2.2.10-slim.dockerfile . || exit 1
	docker tag ruby:2.2.10-slim-leap${LEAP_VERSION} docker-reg.intercom.it/intercom/ruby:2.2.10-slim
	docker tag ruby:2.2.10-slim-leap${LEAP_VERSION} docker-reg.intercom.it/intercom/ruby:2.2.10-slim-leap
	docker tag ruby:2.2.10-slim-leap${LEAP_VERSION} docker-reg.intercom.it/intercom/ruby:2.2.10-slim-leap${LEAP_VERSION}
	docker tag ruby:2.2.10-slim-leap${LEAP_VERSION} docker-reg.intercom.it/intercom/ruby:2.2.10-slim-leap${LEAP_VERSION}-${DATE}

ruby-2.3.8: ruby-2.3.8-dev ruby-2.3.8-slim

ruby-2.3.8-dev: buildenv devel-base
	docker build \
		--build-arg LEAP_VERSION=${LEAP_VERSION} \
		-t ruby:2.3.8-leap${LEAP_VERSION} -f ruby-2.3.8.dockerfile . || exit 1
	docker tag ruby:2.3.8-leap${LEAP_VERSION} docker-reg.intercom.it/intercom/ruby:2.3.8
	docker tag ruby:2.3.8-leap${LEAP_VERSION} docker-reg.intercom.it/intercom/ruby:2.3.8-leap
	docker tag ruby:2.3.8-leap${LEAP_VERSION} docker-reg.intercom.it/intercom/ruby:2.3.8-leap${LEAP_VERSION}
	docker tag ruby:2.3.8-leap${LEAP_VERSION} docker-reg.intercom.it/intercom/ruby:2.3.8-leap${LEAP_VERSION}-${DATE}

ruby-2.3.8-slim: slim-base ruby-2.3.8-dev
	docker build \
		--build-arg LEAP_VERSION=${LEAP_VERSION} \
		-t ruby:2.3.8-slim-leap${LEAP_VERSION} -f ruby-2.3.8-slim.dockerfile . || exit 1
	docker tag ruby:2.3.8-slim-leap${LEAP_VERSION} docker-reg.intercom.it/intercom/ruby:2.3.8-slim
	docker tag ruby:2.3.8-slim-leap${LEAP_VERSION} docker-reg.intercom.it/intercom/ruby:2.3.8-slim-leap
	docker tag ruby:2.3.8-slim-leap${LEAP_VERSION} docker-reg.intercom.it/intercom/ruby:2.3.8-slim-leap${LEAP_VERSION}
	docker tag ruby:2.3.8-slim-leap${LEAP_VERSION} docker-reg.intercom.it/intercom/ruby:2.3.8-slim-leap${LEAP_VERSION}-${DATE}




buildenv-new: 
	docker build \
		--build-arg LEAP_VERSION=${LEAP_VERSION} \
		-t ruby-buildenv-new-${LEAP_VERSION} -f buildenv-new.dockerfile . || exit 1

slim-base-new: 
	docker build \
		--build-arg LEAP_VERSION=${LEAP_VERSION} \
		-t ruby-slim-base-new-${LEAP_VERSION} -f slim-base-new.dockerfile . || exit 1

devel-base-new: slim-base-new
	docker build \
		--build-arg LEAP_VERSION=${LEAP_VERSION} \
		-t ruby-base-new-${LEAP_VERSION} -f devel-base-new.dockerfile . || exit 1

ruby-2.4.10: ruby-2.4.10-dev ruby-2.4.10-slim

ruby-2.4.10-dev: buildenv-new devel-base-new
	docker build \
		--build-arg LEAP_VERSION=${LEAP_VERSION} \
		-t ruby:2.4-leap${LEAP_VERSION} -f ruby-2.4.dockerfile . || exit 1
	docker tag ruby:2.4-leap${LEAP_VERSION} docker-reg.intercom.it/intercom/ruby:2.4
	docker tag ruby:2.4-leap${LEAP_VERSION} docker-reg.intercom.it/intercom/ruby:2.4-leap
	docker tag ruby:2.4-leap${LEAP_VERSION} docker-reg.intercom.it/intercom/ruby:2.4-leap${LEAP_VERSION}
	docker tag ruby:2.4-leap${LEAP_VERSION} docker-reg.intercom.it/intercom/ruby:2.4-leap${LEAP_VERSION}-${DATE}

ruby-2.4.10-slim: slim-base-new ruby-2.4.10-dev
	docker build \
		--build-arg LEAP_VERSION=${LEAP_VERSION} \
		-t ruby:2.4-slim-leap${LEAP_VERSION} -f ruby-2.4-slim.dockerfile . || exit 1
	docker tag ruby:2.4-slim-leap${LEAP_VERSION} docker-reg.intercom.it/intercom/ruby:2.4-slim
	docker tag ruby:2.4-slim-leap${LEAP_VERSION} docker-reg.intercom.it/intercom/ruby:2.4-slim-leap
	docker tag ruby:2.4-slim-leap${LEAP_VERSION} docker-reg.intercom.it/intercom/ruby:2.4-slim-leap${LEAP_VERSION}
	docker tag ruby:2.4-slim-leap${LEAP_VERSION} docker-reg.intercom.it/intercom/ruby:2.4-slim-leap${LEAP_VERSION}-${DATE}

ruby-2.5: ruby-2.5-dev ruby-2.5-slim

ruby-2.5-dev: buildenv-new devel-base-new
	docker build \
		--build-arg LEAP_VERSION=${LEAP_VERSION} \
		--build-arg VERSION=${R_25_VERSION} -t ruby:2.5-leap${LEAP_VERSION} -f ruby-2.5.dockerfile . || exit 1
	docker tag ruby:2.5-leap${LEAP_VERSION} docker-reg.intercom.it/intercom/ruby:${R_25_VERSION}
	docker tag ruby:2.5-leap${LEAP_VERSION} docker-reg.intercom.it/intercom/ruby:${R_25_VERSION}-leap
	docker tag ruby:2.5-leap${LEAP_VERSION} docker-reg.intercom.it/intercom/ruby:${R_25_VERSION}-leap${LEAP_VERSION}
	docker tag ruby:2.5-leap${LEAP_VERSION} docker-reg.intercom.it/intercom/ruby:${R_25_VERSION}-leap${LEAP_VERSION}-${DATE}
	docker tag ruby:2.5-leap${LEAP_VERSION} docker-reg.intercom.it/intercom/ruby:2.5
	docker tag ruby:2.5-leap${LEAP_VERSION} docker-reg.intercom.it/intercom/ruby:2.5-leap
	docker tag ruby:2.5-leap${LEAP_VERSION} docker-reg.intercom.it/intercom/ruby:2.5-leap${LEAP_VERSION}
	docker tag ruby:2.5-leap${LEAP_VERSION} docker-reg.intercom.it/intercom/ruby:2.5-leap${LEAP_VERSION}-${DATE}

ruby-2.5-slim: slim-base-new ruby-2.5-dev
	docker build \
		--build-arg LEAP_VERSION=${LEAP_VERSION} \
		-t ruby:2.5-slim-leap${LEAP_VERSION} -f ruby-2.5-slim.dockerfile . || exit 1
	docker tag ruby:2.5-slim-leap${LEAP_VERSION} docker-reg.intercom.it/intercom/ruby:${R_25_VERSION}-slim
	docker tag ruby:2.5-slim-leap${LEAP_VERSION} docker-reg.intercom.it/intercom/ruby:${R_25_VERSION}-slim-leap
	docker tag ruby:2.5-slim-leap${LEAP_VERSION} docker-reg.intercom.it/intercom/ruby:${R_25_VERSION}-slim-leap${LEAP_VERSION}
	docker tag ruby:2.5-slim-leap${LEAP_VERSION} docker-reg.intercom.it/intercom/ruby:${R_25_VERSION}-slim-leap${LEAP_VERSION}-${DATE}
	docker tag ruby:2.5-slim-leap${LEAP_VERSION} docker-reg.intercom.it/intercom/ruby:2.5-slim
	docker tag ruby:2.5-slim-leap${LEAP_VERSION} docker-reg.intercom.it/intercom/ruby:2.5-slim-leap
	docker tag ruby:2.5-slim-leap${LEAP_VERSION} docker-reg.intercom.it/intercom/ruby:2.5-slim-leap${LEAP_VERSION}
	docker tag ruby:2.5-slim-leap${LEAP_VERSION} docker-reg.intercom.it/intercom/ruby:2.5-slim-leap${LEAP_VERSION}-${DATE}

ruby-2.6: ruby-2.6-dev ruby-2.6-slim

ruby-2.6-dev: buildenv-new devel-base-new
	docker build \
		--build-arg LEAP_VERSION=${LEAP_VERSION} \
		--build-arg VERSION=${R_26_VERSION} \
		-t ruby:2.6-leap${LEAP_VERSION} -f ruby-2.6.dockerfile . || exit 1
	docker tag ruby:2.6-leap${LEAP_VERSION} docker-reg.intercom.it/intercom/ruby:${R_26_VERSION}
	docker tag ruby:2.6-leap${LEAP_VERSION} docker-reg.intercom.it/intercom/ruby:${R_26_VERSION}-leap
	docker tag ruby:2.6-leap${LEAP_VERSION} docker-reg.intercom.it/intercom/ruby:${R_26_VERSION}-leap${LEAP_VERSION}
	docker tag ruby:2.6-leap${LEAP_VERSION} docker-reg.intercom.it/intercom/ruby:${R_26_VERSION}-leap${LEAP_VERSION}-${DATE}
	docker tag ruby:2.6-leap${LEAP_VERSION} docker-reg.intercom.it/intercom/ruby:2.6
	docker tag ruby:2.6-leap${LEAP_VERSION} docker-reg.intercom.it/intercom/ruby:2.6-leap
	docker tag ruby:2.6-leap${LEAP_VERSION} docker-reg.intercom.it/intercom/ruby:2.6-leap${LEAP_VERSION}
	docker tag ruby:2.6-leap${LEAP_VERSION} docker-reg.intercom.it/intercom/ruby:2.6-leap${LEAP_VERSION}-${DATE}


ruby-2.6-slim: slim-base-new ruby-2.6-dev
	docker build \
		--build-arg LEAP_VERSION=${LEAP_VERSION} \
		-t ruby:2.6-slim-leap${LEAP_VERSION} -f ruby-2.6-slim.dockerfile . || exit 1
	docker tag ruby:2.6-slim-leap${LEAP_VERSION} docker-reg.intercom.it/intercom/ruby:${R_26_VERSION}-slim
	docker tag ruby:2.6-slim-leap${LEAP_VERSION} docker-reg.intercom.it/intercom/ruby:${R_26_VERSION}-slim-leap
	docker tag ruby:2.6-slim-leap${LEAP_VERSION} docker-reg.intercom.it/intercom/ruby:${R_26_VERSION}-slim-leap${LEAP_VERSION}
	docker tag ruby:2.6-slim-leap${LEAP_VERSION} docker-reg.intercom.it/intercom/ruby:${R_26_VERSION}-slim-leap${LEAP_VERSION}-${DATE}
	docker tag ruby:2.6-slim-leap${LEAP_VERSION} docker-reg.intercom.it/intercom/ruby:2.6-slim
	docker tag ruby:2.6-slim-leap${LEAP_VERSION} docker-reg.intercom.it/intercom/ruby:2.6-slim-leap
	docker tag ruby:2.6-slim-leap${LEAP_VERSION} docker-reg.intercom.it/intercom/ruby:2.6-slim-leap${LEAP_VERSION}
	docker tag ruby:2.6-slim-leap${LEAP_VERSION} docker-reg.intercom.it/intercom/ruby:2.6-slim-leap${LEAP_VERSION}-${DATE}

ruby-2.7: ruby-2.7-dev ruby-2.7-slim

ruby-2.7-dev: buildenv-new devel-base-new
	docker build \
		--build-arg LEAP_VERSION=${LEAP_VERSION} \
		--build-arg VERSION=${R_27_VERSION} \
		-t ruby:2.7-leap${LEAP_VERSION} -f ruby-2.7.dockerfile . || exit 1
	docker tag ruby:2.7-leap${LEAP_VERSION} docker-reg.intercom.it/intercom/ruby:${R_27_VERSION}
	docker tag ruby:2.7-leap${LEAP_VERSION} docker-reg.intercom.it/intercom/ruby:${R_27_VERSION}-leap
	docker tag ruby:2.7-leap${LEAP_VERSION} docker-reg.intercom.it/intercom/ruby:${R_27_VERSION}-leap${LEAP_VERSION}
	docker tag ruby:2.7-leap${LEAP_VERSION} docker-reg.intercom.it/intercom/ruby:${R_27_VERSION}-leap${LEAP_VERSION}-${DATE}
	docker tag ruby:2.7-leap${LEAP_VERSION} docker-reg.intercom.it/intercom/ruby:2.7
	docker tag ruby:2.7-leap${LEAP_VERSION} docker-reg.intercom.it/intercom/ruby:2.7-leap
	docker tag ruby:2.7-leap${LEAP_VERSION} docker-reg.intercom.it/intercom/ruby:2.7-leap${LEAP_VERSION}
	docker tag ruby:2.7-leap${LEAP_VERSION} docker-reg.intercom.it/intercom/ruby:2.7-leap${LEAP_VERSION}-${DATE}

ruby-2.7-slim: slim-base-new ruby-2.7-dev
	docker build \
		--build-arg LEAP_VERSION=${LEAP_VERSION} \
		-t ruby:2.7-slim-leap${LEAP_VERSION} -f ruby-2.7-slim.dockerfile . || exit 1
	docker tag ruby:2.7-slim-leap${LEAP_VERSION} docker-reg.intercom.it/intercom/ruby:${R_27_VERSION}-slim
	docker tag ruby:2.7-slim-leap${LEAP_VERSION} docker-reg.intercom.it/intercom/ruby:${R_27_VERSION}-slim-leap
	docker tag ruby:2.7-slim-leap${LEAP_VERSION} docker-reg.intercom.it/intercom/ruby:${R_27_VERSION}-slim-leap${LEAP_VERSION}
	docker tag ruby:2.7-slim-leap${LEAP_VERSION} docker-reg.intercom.it/intercom/ruby:${R_27_VERSION}-slim-leap${LEAP_VERSION}-${DATE}
	docker tag ruby:2.7-slim-leap${LEAP_VERSION} docker-reg.intercom.it/intercom/ruby:2.7-slim
	docker tag ruby:2.7-slim-leap${LEAP_VERSION} docker-reg.intercom.it/intercom/ruby:2.7-slim-leap
	docker tag ruby:2.7-slim-leap${LEAP_VERSION} docker-reg.intercom.it/intercom/ruby:2.7-slim-leap${LEAP_VERSION}
	docker tag ruby:2.7-slim-leap${LEAP_VERSION} docker-reg.intercom.it/intercom/ruby:2.7-slim-leap${LEAP_VERSION}-${DATE}




push-ruby-1.8.7: push-ruby-1.8.7-dev push-ruby-1.8.7-slim

push-ruby-1.8.7-dev: ruby-1.8.7-dev
	docker push docker-reg.intercom.it/intercom/ruby:1.8.7-leap${LEAP_VERSION}-${DATE}
	docker push docker-reg.intercom.it/intercom/ruby:1.8.7
	docker push docker-reg.intercom.it/intercom/ruby:1.8.7-leap

push-ruby-1.8.7-slim: ruby-1.8.7-slim
	docker push docker-reg.intercom.it/intercom/ruby:1.8.7-slim-leap${LEAP_VERSION}-${DATE}
	docker push docker-reg.intercom.it/intercom/ruby:1.8.7-slim
	docker push docker-reg.intercom.it/intercom/ruby:1.8.7-slim-leap

push-ruby-1.9.3: push-ruby-1.9.3-dev push-ruby-1.9.3-slim

push-ruby-1.9.3-dev: ruby-1.9.3-dev
	docker push docker-reg.intercom.it/intercom/ruby:1.9.3-leap${LEAP_VERSION}-${DATE}
	docker push docker-reg.intercom.it/intercom/ruby:1.9.3
	docker push docker-reg.intercom.it/intercom/ruby:1.9.3-leap

push-ruby-1.9.3-slim: ruby-1.9.3-slim
	docker push docker-reg.intercom.it/intercom/ruby:1.9.3-slim-leap${LEAP_VERSION}-${DATE}
	docker push docker-reg.intercom.it/intercom/ruby:1.9.3-slim
	docker push docker-reg.intercom.it/intercom/ruby:1.9.3-slim-leap

push-ruby-2.0.0: push-ruby-2.0.0-dev push-ruby-2.0.0-slim

push-ruby-2.0.0-dev: ruby-2.0.0-dev
	docker push docker-reg.intercom.it/intercom/ruby:2.0.0-leap${LEAP_VERSION}-${DATE}
	docker push docker-reg.intercom.it/intercom/ruby:2.0.0
	docker push docker-reg.intercom.it/intercom/ruby:2.0.0-leap

push-ruby-2.0.0-slim: ruby-2.0.0-slim
	docker push docker-reg.intercom.it/intercom/ruby:2.0.0-slim-leap${LEAP_VERSION}-${DATE}
	docker push docker-reg.intercom.it/intercom/ruby:2.0.0-slim
	docker push docker-reg.intercom.it/intercom/ruby:2.0.0-slim-leap

push-ruby-2.1.10: push-ruby-2.1.10-dev push-ruby-2.1.10-slim

push-ruby-2.1.10-dev: ruby-2.1.10-dev
	docker push docker-reg.intercom.it/intercom/ruby:2.1.10-leap${LEAP_VERSION}-${DATE}
	docker push docker-reg.intercom.it/intercom/ruby:2.1.10
	docker push docker-reg.intercom.it/intercom/ruby:2.1.10-leap

push-ruby-2.1.10-slim: ruby-2.1.10-slim
	docker push docker-reg.intercom.it/intercom/ruby:2.1.10-slim-leap${LEAP_VERSION}-${DATE}
	docker push docker-reg.intercom.it/intercom/ruby:2.1.10-slim
	docker push docker-reg.intercom.it/intercom/ruby:2.1.10-slim-leap

push-ruby-2.2.10: push-ruby-2.2.10-dev push-ruby-2.2.10-slim

push-ruby-2.2.10-dev: ruby-2.2.10-dev
	docker push docker-reg.intercom.it/intercom/ruby:2.2.10-leap${LEAP_VERSION}-${DATE}
	docker push docker-reg.intercom.it/intercom/ruby:2.2.10
	docker push docker-reg.intercom.it/intercom/ruby:2.2.10-leap

push-ruby-2.2.10-slim: ruby-2.2.10-slim
	docker push docker-reg.intercom.it/intercom/ruby:2.2.10-slim-leap${LEAP_VERSION}-${DATE}
	docker push docker-reg.intercom.it/intercom/ruby:2.2.10-slim
	docker push docker-reg.intercom.it/intercom/ruby:2.2.10-slim-leap

push-ruby-2.3.8: push-ruby-2.3.8-dev push-ruby-2.3.8-slim

push-ruby-2.3.8-dev: ruby-2.3.8-dev
	docker push docker-reg.intercom.it/intercom/ruby:2.3.8-leap${LEAP_VERSION}-${DATE}
	docker push docker-reg.intercom.it/intercom/ruby:2.3.8
	docker push docker-reg.intercom.it/intercom/ruby:2.3.8-leap

push-ruby-2.3.8-slim: ruby-2.3.8-slim
	docker push docker-reg.intercom.it/intercom/ruby:2.3.8-slim-leap${LEAP_VERSION}-${DATE}
	docker push docker-reg.intercom.it/intercom/ruby:2.3.8-slim
	docker push docker-reg.intercom.it/intercom/ruby:2.3.8-slim-leap

push-ruby-2.4.10: push-ruby-2.4.10-dev push-ruby-2.4.10-slim

push-ruby-2.4.10-dev: ruby-2.4.10-dev
	docker push docker-reg.intercom.it/intercom/ruby:2.4-leap${LEAP_VERSION}-${DATE}
	docker push docker-reg.intercom.it/intercom/ruby:2.4
	docker push docker-reg.intercom.it/intercom/ruby:2.4-leap

push-ruby-2.4.10-slim: ruby-2.4.10-slim
	docker push docker-reg.intercom.it/intercom/ruby:2.4-slim-leap${LEAP_VERSION}-${DATE}
	docker push docker-reg.intercom.it/intercom/ruby:2.4-slim
	docker push docker-reg.intercom.it/intercom/ruby:2.4-slim-leap

push-ruby-2.5: push-ruby-2.5-dev push-ruby-2.5-slim

push-ruby-2.5-dev: ruby-2.5-dev
	docker push docker-reg.intercom.it/intercom/ruby:${R_25_VERSION}-leap${LEAP_VERSION}-${DATE}
	docker push docker-reg.intercom.it/intercom/ruby:${R_25_VERSION}
	docker push docker-reg.intercom.it/intercom/ruby:${R_25_VERSION}-leap
	docker push docker-reg.intercom.it/intercom/ruby:2.5-leap${LEAP_VERSION}-${DATE}
	docker push docker-reg.intercom.it/intercom/ruby:2.5
	docker push docker-reg.intercom.it/intercom/ruby:2.5-leap

push-ruby-2.5-slim: ruby-2.5-slim
	docker push docker-reg.intercom.it/intercom/ruby:${R_25_VERSION}-slim-leap${LEAP_VERSION}-${DATE}
	docker push docker-reg.intercom.it/intercom/ruby:${R_25_VERSION}-slim
	docker push docker-reg.intercom.it/intercom/ruby:${R_25_VERSION}-slim-leap
	docker push docker-reg.intercom.it/intercom/ruby:2.5-slim-leap${LEAP_VERSION}-${DATE}
	docker push docker-reg.intercom.it/intercom/ruby:2.5-slim
	docker push docker-reg.intercom.it/intercom/ruby:2.5-slim-leap

push-ruby-2.6: push-ruby-2.6-dev push-ruby-2.6-slim

push-ruby-2.6-dev: ruby-2.6-dev
	docker push docker-reg.intercom.it/intercom/ruby:${R_26_VERSION}-leap${LEAP_VERSION}-${DATE}
	docker push docker-reg.intercom.it/intercom/ruby:${R_26_VERSION}
	docker push docker-reg.intercom.it/intercom/ruby:${R_26_VERSION}-leap
	docker push docker-reg.intercom.it/intercom/ruby:2.6-leap${LEAP_VERSION}-${DATE}
	docker push docker-reg.intercom.it/intercom/ruby:2.6
	docker push docker-reg.intercom.it/intercom/ruby:2.6-leap

push-ruby-2.6-slim: ruby-2.6-slim
	docker push docker-reg.intercom.it/intercom/ruby:${R_26_VERSION}-slim-leap${LEAP_VERSION}-${DATE}
	docker push docker-reg.intercom.it/intercom/ruby:${R_26_VERSION}-slim
	docker push docker-reg.intercom.it/intercom/ruby:${R_26_VERSION}-slim-leap
	docker push docker-reg.intercom.it/intercom/ruby:2.6-slim-leap${LEAP_VERSION}-${DATE}
	docker push docker-reg.intercom.it/intercom/ruby:2.6-slim
	docker push docker-reg.intercom.it/intercom/ruby:2.6-slim-leap

push-ruby-2.7: push-ruby-2.7-dev push-ruby-2.7-slim

push-ruby-2.7-dev: ruby-2.7-dev
	docker push docker-reg.intercom.it/intercom/ruby:${R_27_VERSION}-leap${LEAP_VERSION}-${DATE}
	docker push docker-reg.intercom.it/intercom/ruby:${R_27_VERSION}
	docker push docker-reg.intercom.it/intercom/ruby:${R_27_VERSION}-leap
	docker push docker-reg.intercom.it/intercom/ruby:2.7-leap${LEAP_VERSION}-${DATE}
	docker push docker-reg.intercom.it/intercom/ruby:2.7
	docker push docker-reg.intercom.it/intercom/ruby:2.7-leap

push-ruby-2.7-slim: ruby-2.7-slim
	docker push docker-reg.intercom.it/intercom/ruby:${R_27_VERSION}-slim-leap${LEAP_VERSION}-${DATE}
	docker push docker-reg.intercom.it/intercom/ruby:${R_27_VERSION}-slim
	docker push docker-reg.intercom.it/intercom/ruby:${R_27_VERSION}-slim-leap
	docker push docker-reg.intercom.it/intercom/ruby:2.7-slim-leap${LEAP_VERSION}-${DATE}
	docker push docker-reg.intercom.it/intercom/ruby:2.7-slim
	docker push docker-reg.intercom.it/intercom/ruby:2.7-slim-leap