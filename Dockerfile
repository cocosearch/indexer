FROM golang:latest AS build-stage
WORKDIR /c/src/app
RUN apt update && \
    apt install -y automake build-essential pkg-config
RUN git clone https://github.com/universal-ctags/ctags /c/src/app && \
    cd /c/src/app && \
    ./autogen.sh && ./configure --prefix=$PWD/install && \
    make && make install
WORKDIR /go/src/app
COPY . .
RUN apt update && \
    apt install -y upx
RUN make build

FROM gcr.io/distroless/base-debian11 AS production-stage
WORKDIR /
COPY --from=build-stage /c/src/app/install/bin/ctags /
COPY --from=build-stage /go/src/app/bin/indexer /
USER nonroot:nonroot
ENTRYPOINT ["/indexer"]
