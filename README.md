# Go Docker Container Example

Example and template for dockerizing a Go application that I created for my personal use.

I am using multistage builds to minimize the image size following the tutorial from [https://docs.docker.com/language/golang/build-images/](https://docs.docker.com/language/golang/build-images/) and made some small adjustments.

The main point is that after the binary of the application is built, it is copied into the [distroless](https://github.com/GoogleContainerTools/distroless) base image that only contains the tools to run the application which minimizes the image size.

## Usage

The main point is the dockerfile. Replace the application name and you are ready to go.

## Docker

As a reminder to build the image and to tag it run

```shell
docker build -t your_desired_docker-image-name .
```

That's it you are ready to go.
