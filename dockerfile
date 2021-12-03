FROM golang:1.17-bullseye AS build

WORKDIR /app

COPY go.mod ./
COPY go.sum ./
RUN go mod download

COPY *.go ./

# Replace go-docker-container-example with the corresponding application name
RUN go build -o /go-docker-container-example

# Base image that only contains the necessary tools to run the application
FROM gcr.io/distroless/base-debian10

WORKDIR /

# Copy the binary that has been build with the "full" base image
COPY --from=build /go-docker-container-example /go-docker-container-example

EXPOSE 8080

USER nonroot:nonroot

ENTRYPOINT ["/go-docker-container-example"]