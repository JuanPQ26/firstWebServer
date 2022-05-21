FROM golang:1.18-alpine

RUN apk add --no-cache make

WORKDIR /firstWebServer

COPY go.mod ./

RUN go mod download && go mod verify

COPY . .

RUN make

CMD [ "firstWebServer" ]
