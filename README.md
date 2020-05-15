# 基础镜像 WEB Python 3.6

- L: Linux alpine
- P: Python 3.6

## Example

TODO:

## Usage

### ENV

- FLAG=ctfhub{gunicorn_web}

You should rewrite flag.sh when you use this image.
The `$FLAG` is not mandatory, but i hope you use it!

### Files

- src 网站源码
    + app.py
    + requirements.txt **This is used in Dockerfile(require)**
    + ...etc
- Dockerfile
- docker-compose.yml

### Dockerfile

```Dockerfile
FROM ctfhub/base_web_python_36

ENV PYTHON_APP=app.py

COPY src /app
COPY _files/flag.sh /flag.sh
```


