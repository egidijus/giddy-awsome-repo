.DEFAULT_GOAL := go
export
SHELL := /usr/bin/env bash
export SERVICE=dynamic-vars

go : build run

build:
	docker-compose build consul
	docker-compose build application
	docker-compose build application-java

run:
	docker-compose up consul application-java
