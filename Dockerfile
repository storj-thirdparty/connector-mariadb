FROM golang:alpine
RUN mkdir /app
COPY . /app/
WORKDIR /app/cmd
RUN go test -v main_test.go
