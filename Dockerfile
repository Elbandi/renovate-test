FROM alpine:3.19.1@sha256:6457d53fb065d6f250e1504b9bc42d5b6c65941d57532c072d929dd0628977d0

# renovate: datasource=repology depName=alpine_3_12/gcc versioning=loose
ENV GCC_VERSION="9.3.0-r1"
# renovate: datasource=repology depName=alpine_3_12/musl-dev versioning=loose
ENV MUSL_DEV_VERSION="1.1.24-r8"

RUN apk add --no-cache \
    gcc="${GCC_VERSION}" \
    musl-dev="${MUSL_DEV_VERSION}"
