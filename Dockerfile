FROM alpine:3.12.0@sha256:a15790640a6690aa1730c38cf0a440e2aa44aaca9b0e8931a9f2b0d7cc90fd65


# renovate: datasource=repology depName=ubuntu_20_04/puppet-master versioning=loose
ARG PUPPET_VERSION="5.5.10-4ubuntu3"

# renovate: datasource=repology depName=alpine_3_12/gcc versioning=loose
ENV GCC_VERSION="9.3.0-r1"
# renovate: datasource=repology depName=alpine_3_12/musl-dev versioning=loose
ENV MUSL_DEV_VERSION="1.1.24-r8"

RUN apk add --no-cache \
    gcc="${GCC_VERSION}" \
    musl-dev="${MUSL_DEV_VERSION}"
