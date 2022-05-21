build:
	go build -o /usr/local/bin ./cmd/firstWebServer

run:
	go run ./cmd/firstWebServer

local:
	go build -o ./bin ./cmd/firstWebServer