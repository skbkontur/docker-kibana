default: build

build:
	docker-compose build kibana

run:
	docker-compose up -d

clean:
	docker-compose down
