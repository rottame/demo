.PHONY: all base buildenv devel-base minimal-base
.PHONY: ruby-1.8.7  ruby-1.8.7-devel  ruby-1.8.7-minimal
.PHONY: ruby-1.9.3  ruby-1.9.3-devel  ruby-1.9.3-minimal
.PHONY: ruby-2.0.0  ruby-2.0.0-devel  ruby-2.0.0-minimal
.PHONY: ruby-2.1.10 ruby-2.1.10-devel ruby-2.1.10-minimal
.PHONY: ruby-2.2.10 ruby-2.2.10-devel ruby-2.2.10-minimal
.PHONY: ruby-2.3.8  ruby-2.3.8-devel  ruby-2.3.8-minimal

all: base ruby-1.8.7 ruby-1.9.3 ruby-2.0.0 ruby-2.1.10 ruby-2.2.10 ruby-2.3.8

base: buildenv minimal-base devel-base

buildenv: 
	docker build -t ruby-buildenv -f buildenv.dockerfile .

minimal-base: 
	docker build -t ruby-minimal-base -f minimal-base.dockerfile .

devel-base: 
	docker build -t ruby-devel-base -f devel-base.dockerfile .

ruby-1.8.7: ruby-1.8.7-devel ruby-1.8.7-minimal

ruby-1.8.7-devel:
	docker build -t ruby:1.8.7-devel -f ruby-1.8.7-devel.dockerfile .
	docker tag ruby:1.8.7-devel docker-reg.intercom.it/ruby:1.8.7-devel

ruby-1.8.7-minimal:
	docker build -t ruby:1.8.7-minimal -f ruby-1.8.7-minimal.dockerfile .
	docker tag ruby:1.8.7-minimal docker-reg.intercom.it/ruby:1.8.7-minimal

ruby-1.9.3: ruby-1.9.3-devel ruby-1.9.3-minimal

ruby-1.9.3-devel:
	docker build -t ruby:1.9.3-devel -f ruby-1.9.3-devel.dockerfile .
	docker tag ruby:1.9.3-devel docker-reg.intercom.it/ruby:1.9.3-devel

ruby-1.9.3-minimal:
	docker build -t ruby:1.9.3-minimal -f ruby-1.9.3-minimal.dockerfile .
	docker tag ruby:1.9.3-minimal docker-reg.intercom.it/ruby:1.9.3-minimal

ruby-2.0.0: ruby-2.0.0-devel ruby-2.0.0-minimal

ruby-2.0.0-devel:
	docker build -t ruby:2.0.0-devel -f ruby-2.0.0-devel.dockerfile .
	docker tag ruby:2.0.0-devel docker-reg.intercom.it/ruby:2.0.0-devel

ruby-2.0.0-minimal:
	docker build -t ruby:2.0.0-minimal -f ruby-2.0.0-minimal.dockerfile .
	docker tag ruby:2.0.0-minimal docker-reg.intercom.it/ruby:2.0.0-minimal

ruby-2.1.10: ruby-2.1.10-devel ruby-2.1.10-minimal

ruby-2.1.10-devel:
	docker build -t ruby:2.1.10-devel -f ruby-2.1.10-devel.dockerfile .
	docker tag ruby:2.1.10-devel docker-reg.intercom.it/ruby:2.1.10-devel

ruby-2.1.10-minimal:
	docker build -t ruby:2.1.10-minimal -f ruby-2.1.10-minimal.dockerfile .
	docker tag ruby:2.1.10-minimal docker-reg.intercom.it/ruby:2.1.10-minimal

ruby-2.2.10: ruby-2.2.10-devel ruby-2.2.10-minimal

ruby-2.2.10-devel:
	docker build -t ruby:2.2.10-devel -f ruby-2.2.10-devel.dockerfile .
	docker tag ruby:2.2.10-devel docker-reg.intercom.it/ruby:2.2.10-devel

ruby-2.2.10-minimal:
	docker build -t ruby:2.2.10-minimal -f ruby-2.2.10-minimal.dockerfile .
	docker tag ruby:2.2.10-minimal docker-reg.intercom.it/ruby:2.2.10-minimal

ruby-2.3.8: ruby-2.3.8-devel ruby-2.3.8-minimal

ruby-2.3.8-devel:
	docker build -t ruby:2.3.8-devel -f ruby-2.3.8-devel.dockerfile .
	docker tag ruby:2.3.8-devel docker-reg.intercom.it/ruby:2.3.8-devel

ruby-2.3.8-minimal:
	docker build -t ruby:2.3.8-minimal -f ruby-2.3.8-minimal.dockerfile .
	docker tag ruby:2.3.8-minimal docker-reg.intercom.it/ruby:2.3.8-minimal