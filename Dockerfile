

FROM golang:1.25


#WORKDIR /usr/src/app

COPY main.go /go
COPY go.* /
RUN go mod download




EXPOSE 8080
RUN go build -v -o app .

CMD ["./app"]
#CMD ls