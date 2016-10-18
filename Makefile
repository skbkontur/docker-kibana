default: build

build:
	docker build -t skbkontur/kibana:latest .

run:
	docker-compose up -d
