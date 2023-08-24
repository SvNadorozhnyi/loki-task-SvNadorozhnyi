FROM golang:1.20

WORKDIR /app

COPY . .

RUN go get github.com/labstack/echo/v4

RUN go get github.com/labstack/echo/v4/middleware@v4.11.1

RUN go mod download

RUN go build -o myapp .

EXPOSE 8080

ENTRYPOINT [ "/app/myapp" ]
