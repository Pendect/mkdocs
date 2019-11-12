FROM alpine:3.10.0

LABEL maintainer="Pendect GmbH <tech@pendect.com>" \
      org.label-schema.name="mkdocs" \
      org.label-schema.description="Mkdocs processor." \
      org.label-schema.vendor="Pendect GmbH" \
      org.label-schema.docker.cmd="docker run -d pendect/mkdocs:latest build"


ENV MKDOCS_VERSION 1.0.4

RUN adduser -s /bin/false -D -H mkdocs \
    && apk --no-cache add \
      python3==3.7.5-r1 \
      bash==5.0.0-r0 \
      tini==0.18.0-r0 \
      su-exec==0.2-r0 \
      ca-certificates==20190108-r0 \
    && python3 -m ensurepip \
    && rm -r /usr/lib/python*/ensurepip \
    && pip3 install --no-cache-dir \
      pip==19.3.1 \
      setuptools==41.6.0 \
      mkdocs==${MKDOCS_VERSION} \
      pygments==2.4.2 \
      mkdocs-material==4.4.3 \
      pymdown-extensions==6.1

VOLUME ["/docs/"]

WORKDIR /docs/

COPY dockerfiles/entrypoint.sh /usr/local/bin/entrypoint.sh

ENTRYPOINT ["/sbin/tini", "--", "/usr/local/bin/entrypoint.sh"]

# Expose MkDocs development server port
EXPOSE 8000
