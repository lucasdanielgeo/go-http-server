.PHONY: tidy dev build-image start-container stop-container

tidy:
	go mod tidy

build:
	go build -o bin/server ./main.go

dev: tidy
	go run main.go

build-image:
	sudo docker build -t go_http_server .

start-container:
	sudo docker run -dt -p 3000:3000 --name go_server go_http_server

stop-container:
	sudo docker stop go_server && sudo docker rm go_server
