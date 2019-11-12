FROM alpine:3.10.0

LABEL maintainer="Pendect GmbH <tech@pendect.com>" \
      org.label-schema.name="mkdocs" \
      org.label-schema.description="Mkdocs processor." \
      org.label-schema.vendor="Pendect GmbH" \
      org.label-schema.docker.cmd="docker run -d pendect/mkdocs:latest build"


ENV MKDOCS_VERSION 1.0.4

RUN adduser -s /bin/false -D -H mkdocs \
    && apk --no-cache add \
      python3 \
      bash \
      tini \
      su-exec \
      ca-certificates \
    && python3 -m ensurepip \
    && rm -r /usr/lib/python*/ensurepip \
    && pip3 install --no-cache-dir --upgrade \
      pip \
      setuptools \
      mkdocs==${MKDOCS_VERSION} \
      pygments \
      mkdocs-material \
      pymdown-extensions

VOLUME ["/docs/"]

WORKDIR /docs/

COPY dockerfiles/entrypoint.sh /usr/local/bin/entrypoint.sh

ENTRYPOINT ["/sbin/tini", "--", "/usr/local/bin/entrypoint.sh"]

# Expose MkDocs development server port
EXPOSE 8000
