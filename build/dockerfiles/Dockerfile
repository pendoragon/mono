FROM --platform=${BUILDPLATFORM} golang:1.18 as builder
ADD . /build
ARG TARGETOS TARGETARCH GIT_VERSION
ARG BINARY
WORKDIR /build/
RUN  make build-linux

FROM --platform=${BUILDPLATFORM} gcr.io/distroless/base-debian11:latest
ARG TARGETOS TARGETARCH
ARG BINARY
#COPY --from=builder /build/output/bin/${TARGETOS}/${TARGETARCH}/${BINARY} /usr/local/bin/${BINARY}
COPY ./apps/app1/app1 /usr/local/bin/${BINARY}
