# go-docker-container-example
Example and template for dockerizing a Go application that I created for my personal use.

I am using multistage builds to minimize the image size following the tutorial from [https://docs.docker.com/language/golang/build-images/](https://docs.docker.com/language/golang/build-images/) and made some small adjustments.

The main point is that after the binary of the application is build, it is copied into the [distroless](https://github.com/GoogleContainerTools/distroless) base image that only contains the tools to run the application which minimizes the image size.
