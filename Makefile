all: build

build:
	@docker build --tag=openapphack/raspbian:latest .

release: build
	@docker build --tag=openapphack/raspbian:$(shell cat VERSION) .
