FROM python:3.6-alpine

LABEL Organization="CTFHUB" Author="Virink <virink@outlook.com>"

COPY _files /tmp/

# Default Env
ENV PYTHON_APP=app.py

RUN sed -i 's/dl-cdn.alpinelinux.org/mirrors.aliyun.com/g' /etc/apk/repositories; \
    apk update; \
    # _files
    mv /tmp/flag.sh /flag.sh; \
    mv /tmp/pip.conf /etc/pip.conf; \
    mkdir -p /app; \
    # pip
    python -m pip install -U pip; \
    # docker-entrypoint
    mv /tmp/docker-entrypoint /usr/local/bin/docker-entrypoint \
    && chmod +x /usr/local/bin/docker-entrypoint

WORKDIR /app

EXPOSE 80

CMD ["docker-entrypoint"]
