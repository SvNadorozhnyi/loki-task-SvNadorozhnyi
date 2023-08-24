FROM golang:1.20
WORKDIR /app
#COPY go.mod go.sum .
COPY . . 
RUN go get github.com/labstack/echo/v4
RUN go get github.com/labstack/echo/v4/middleware@v4.11.1
RUN go mod download
RUN go build -o .
CMD [ "go","run","./" ]