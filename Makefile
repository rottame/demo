.PHONY: all push _ruby_build\
			  ruby-1.9 ruby-2.0 ruby-2.1 ruby-2.2 ruby-2.3 \
			  ruby-2.4 ruby-2.5 ruby-2.6 ruby-2.7

IMAGE_NAME=docker-reg.intercom.it/intercom/ruby
R_25_VERSION=2.5.9
R_26_VERSION=2.6.10
R_27_VERSION=2.7.8
R_31_VERSION=3.1.4
R_32_VERSION=3.2.2
LEAP_VERSION=15.5
$(eval DATE=$(shell date +%Y%m%d))

all: tmp/build_images ruby-1.9 ruby-2.0 ruby-2.1 ruby-2.2 ruby-2.3 \
			ruby-2.4 ruby-2.5 ruby-2.6 ruby-2.7 ruby-3.1 ruby-3.2

push: all push-ruby-1.9 push-ruby-2.0 push-ruby-2.1 push-ruby-2.2 \
			push-ruby-2.3 push-ruby-2.4 push-ruby-2.5 push-ruby-2.6 push-ruby-2.7 \
			push-ruby-3.1 push-ruby-3.2

clean: rm -rf tmp

tmp/build_images: Makefile
	make tmp
	make tmp/buildenv
	make tmp/slim-base
	make tmp/devel-base
	touch tmp/build_images

tmp/buildenv: tmp/buildenv-old tmp/buildenv-new
	touch tmp/buildenv

tmp/slim-base: tmp/slim-base-old tmp/slim-base-new
	touch tmp/slim-base

tmp/devel-base: tmp/devel-base-old tmp/devel-base-new
	touch tmp/devel-base


ruby-1.9: tmp/ruby-1.9

ruby-2.0: tmp/ruby-2.0

ruby-2.1: tmp/ruby-2.1

ruby-2.2: tmp/ruby-2.2

ruby-2.3: tmp/ruby-2.3

ruby-2.4: tmp/ruby-2.4

ruby-2.5: tmp/ruby-2.5

ruby-2.6: tmp/ruby-2.6

ruby-2.7: tmp/ruby-2.7

ruby-3.1: tmp/ruby-3.1

ruby-3.2: tmp/ruby-3.2


push-ruby-1.9: tmp/ruby-1.9
	make _ruby_push RUBY_MINOR_VERSION=1.9 RUBY_VERSION=1.9.3

push-ruby-2.0: tmp/ruby-2.0
	make _ruby_push RUBY_MINOR_VERSION=2.0 RUBY_VERSION=2.0.0

push-ruby-2.1: tmp/ruby-2.1
	make _ruby_push RUBY_MINOR_VERSION=2.1 RUBY_VERSION=2.1.10

push-ruby-2.2: tmp/ruby-2.2
	make _ruby_push RUBY_MINOR_VERSION=2.2 RUBY_VERSION=2.2.10

push-ruby-2.3: tmp/ruby-2.3
	make _ruby_push RUBY_MINOR_VERSION=2.3 RUBY_VERSION=2.3.8

push-ruby-2.4: tmp/ruby-2.4
	make _ruby_push RUBY_MINOR_VERSION=2.4 RUBY_VERSION=2.4.10

push-ruby-2.5: tmp/ruby-2.5
	make _ruby_push RUBY_MINOR_VERSION=2.5 RUBY_VERSION=${R_25_VERSION}

push-ruby-2.6: tmp/ruby-2.6
	make _ruby_push RUBY_MINOR_VERSION=2.6 RUBY_VERSION=${R_26_VERSION}

push-ruby-2.7: tmp/ruby-2.7
	make _ruby_push RUBY_MINOR_VERSION=2.7 RUBY_VERSION=${R_27_VERSION}

push-ruby-3.1: tmp/ruby-3.1
	make _ruby_push RUBY_MINOR_VERSION=3.1 RUBY_VERSION=${R_31_VERSION}

push-ruby-3.2: tmp/ruby-3.2
	make _ruby_push RUBY_MINOR_VERSION=3.2 RUBY_VERSION=${R_32_VERSION}

tmp: Makefile
	mkdir -p tmp
	touch tmp

tmp/buildenv-old: buildenv.dockerfile buildenv-mariadb-connector-3.dockerfile buildenv-mariadb-connector-2.dockerfile
	docker build  \
		--progress plain \
		--build-arg LEAP_VERSION=${LEAP_VERSION} \
		-t ruby-buildenv-base-${LEAP_VERSION} -f buildenv.dockerfile . || exit 1
	docker build  \
		--progress plain \
		--build-arg LEAP_VERSION=${LEAP_VERSION} \
		-t ruby-buildenv-mc2-${LEAP_VERSION} -f buildenv-mariadb-connector-2.dockerfile . || exit 1
	docker build  \
		--progress plain \
		--build-arg LEAP_VERSION=${LEAP_VERSION} \
		-t ruby-buildenv-mc3-${LEAP_VERSION} -f buildenv-mariadb-connector-3.dockerfile . || exit 1
	touch tmp/buildenv-old

tmp/slim-base-old: slim-base.dockerfile
	docker build  \
		--progress plain \
		--build-arg LEAP_VERSION=${LEAP_VERSION} \
		-t ruby-slim-base-${LEAP_VERSION} -f slim-base.dockerfile . || exit 1
	touch tmp/slim-base-old

tmp/devel-base-old: tmp/slim-base-old
	docker build  \
		--progress plain \
		--build-arg LEAP_VERSION=${LEAP_VERSION} \
		-t ruby-base-${LEAP_VERSION} -f devel-base.dockerfile . || exit 1
	touch tmp/devel-base-old

tmp/buildenv-new: buildenv-new.dockerfile
	docker build \
		--progress plain \
		--build-arg LEAP_VERSION=${LEAP_VERSION} \
		-t ruby-buildenv-new-${LEAP_VERSION} -f buildenv-new.dockerfile . || exit 1
	touch tmp/buildenv-new

tmp/slim-base-new: slim-base-new.dockerfile
	docker build \
		--progress plain \
		--build-arg LEAP_VERSION=${LEAP_VERSION} \
		-t ruby-slim-base-new-${LEAP_VERSION} -f slim-base-new.dockerfile . || exit 1
	touch tmp/slim-base-new

tmp/devel-base-new: tmp/slim-base-new devel-base-new.dockerfile
	docker build \
		--progress plain \
		--build-arg LEAP_VERSION=${LEAP_VERSION} \
		-t ruby-base-new-${LEAP_VERSION} -f devel-base-new.dockerfile . || exit 1
	touch tmp/devel-base-new

tmp/ruby-1.9: tmp/build_images ruby-1.9.dockerfile
	make _ruby_build RUBY_MINOR_VERSION=1.9 RUBY_VERSION=1.9.3
	make _ruby_tag RUBY_MINOR_VERSION=1.9 RUBY_VERSION=1.9.3
	touch tmp/ruby-1.9

tmp/ruby-2.0: tmp/build_images ruby-2.0.dockerfile
	make _ruby_build RUBY_MINOR_VERSION=2.0 RUBY_VERSION=2.0.0
	make _ruby_tag RUBY_MINOR_VERSION=2.0 RUBY_VERSION=2.0.0
	touch tmp/ruby-2.0

tmp/ruby-2.1: tmp/build_images ruby-2.1.dockerfile
	make _ruby_build RUBY_MINOR_VERSION=2.1 RUBY_VERSION=2.1.10
	make _ruby_tag RUBY_MINOR_VERSION=2.1 RUBY_VERSION=2.1.10
	touch tmp/ruby-2.1

tmp/ruby-2.2: tmp/build_images ruby-2.2.dockerfile
	make _ruby_build RUBY_MINOR_VERSION=2.2 RUBY_VERSION=2.2.10
	make _ruby_tag RUBY_MINOR_VERSION=2.2 RUBY_VERSION=2.2.10
	touch tmp/ruby-2.2

tmp/ruby-2.3: tmp/build_images ruby-2.3.dockerfile
	make _ruby_build RUBY_MINOR_VERSION=2.3 RUBY_VERSION=2.3.8
	make _ruby_tag RUBY_MINOR_VERSION=2.3 RUBY_VERSION=2.3.8
	touch tmp/ruby-2.3

tmp/ruby-2.4: tmp/build_images ruby-new.dockerfile
	make _ruby_build_new RUBY_MINOR_VERSION=2.4 RUBY_VERSION=2.4.10
	make _ruby_tag RUBY_MINOR_VERSION=2.4 RUBY_VERSION=2.4.10
	touch tmp/ruby-2.4

tmp/ruby-2.5: tmp/build_images ruby-new.dockerfile
	make _ruby_build_new RUBY_MINOR_VERSION=2.5 RUBY_VERSION=${R_25_VERSION}
	make _ruby_tag RUBY_MINOR_VERSION=2.5 RUBY_VERSION=${R_25_VERSION}
	touch tmp/ruby-2.5

tmp/ruby-2.6: tmp/build_images ruby-new.dockerfile
	make _ruby_build_new RUBY_MINOR_VERSION=2.6 RUBY_VERSION=${R_26_VERSION}
	make _ruby_tag RUBY_MINOR_VERSION=2.6 RUBY_VERSION=${R_26_VERSION}
	touch tmp/ruby-2.6

tmp/ruby-2.7: tmp/build_images ruby-new.dockerfile
	make _ruby_build_new RUBY_MINOR_VERSION=2.7 RUBY_VERSION=${R_27_VERSION}
	make _ruby_tag RUBY_MINOR_VERSION=2.7 RUBY_VERSION=${R_27_VERSION}
	touch tmp/ruby-2.7

tmp/ruby-3.1: tmp/build_images ruby-new.dockerfile
	make _ruby_build_new RUBY_MINOR_VERSION=3.1 RUBY_VERSION=${R_31_VERSION}
	make _ruby_tag RUBY_MINOR_VERSION=3.1 RUBY_VERSION=${R_31_VERSION}
	touch tmp/ruby-3.1

tmp/ruby-3.2: tmp/build_images ruby-new.dockerfile
	make _ruby_build_new RUBY_MINOR_VERSION=3.2 RUBY_VERSION=${R_32_VERSION}
	make _ruby_tag RUBY_MINOR_VERSION=3.2 RUBY_VERSION=${R_32_VERSION}
	touch tmp/ruby-3.2


_ruby_build:
	docker build \
		--progress plain \
		--build-arg LEAP_VERSION=${LEAP_VERSION} \
		--build-arg VERSION=${RUBY_VERSION} \
		--target release \
		--progress plain \
		-t ruby:${RUBY_MINOR_VERSION}-leap${LEAP_VERSION} -f ruby-${RUBY_MINOR_VERSION}.dockerfile . || exit 1

	docker build \
		--progress plain \
		--build-arg LEAP_VERSION=${LEAP_VERSION} \
		--build-arg VERSION=${RUBY_VERSION} \
		--target slim-release \
		--progress plain \
		-t ruby:${RUBY_MINOR_VERSION}-slim-leap${LEAP_VERSION} -f ruby-${RUBY_MINOR_VERSION}.dockerfile . || exit 1

_ruby_build_new:
	docker build \
		--progress plain \
		--build-arg LEAP_VERSION=${LEAP_VERSION} \
		--build-arg VERSION=${RUBY_VERSION} \
		--target release \
		--progress plain \
		-t ruby:${RUBY_MINOR_VERSION}-leap${LEAP_VERSION} -f ruby-new.dockerfile . || exit 1

	docker build \
		--progress plain \
		--build-arg LEAP_VERSION=${LEAP_VERSION} \
		--build-arg VERSION=${RUBY_VERSION} \
		--target slim-release \
		--progress plain \
		-t ruby:${RUBY_MINOR_VERSION}-slim-leap${LEAP_VERSION} -f ruby-new.dockerfile . || exit 1

_ruby_tag:
	docker tag ruby:${RUBY_MINOR_VERSION}-leap${LEAP_VERSION} ${IMAGE_NAME}:${RUBY_MINOR_VERSION}
	docker tag ruby:${RUBY_MINOR_VERSION}-leap${LEAP_VERSION} ${IMAGE_NAME}:${RUBY_MINOR_VERSION}-leap${LEAP_VERSION}-${DATE}

	docker tag ruby:${RUBY_MINOR_VERSION}-slim-leap${LEAP_VERSION} ${IMAGE_NAME}:${RUBY_MINOR_VERSION}-slim
	docker tag ruby:${RUBY_MINOR_VERSION}-slim-leap${LEAP_VERSION} ${IMAGE_NAME}:${RUBY_MINOR_VERSION}-slim-leap${LEAP_VERSION}-${DATE}

_ruby_push:
	docker push ${IMAGE_NAME}:${RUBY_MINOR_VERSION}
	docker push ${IMAGE_NAME}:${RUBY_MINOR_VERSION}-leap${LEAP_VERSION}-${DATE}
	docker push ${IMAGE_NAME}:${RUBY_MINOR_VERSION}-slim
	docker push ${IMAGE_NAME}:${RUBY_MINOR_VERSION}-slim-leap${LEAP_VERSION}-${DATE}
