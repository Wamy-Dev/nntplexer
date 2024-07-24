FROM golang:1.16-alpine
WORKDIR /app/src
VOLUME /app/build
COPY . .
RUN apk update && apk add nano
RUN go mod download -x
RUN go build -o /app/build/
