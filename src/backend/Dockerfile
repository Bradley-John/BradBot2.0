# syntax=docker/dockerfile:1.4
FROM --platform=$BUILDPLATFORM python:3.13.3-alpine AS builder

WORKDIR /backend

COPY requirements.txt .
RUN --mount=type=cache,target=/root/.cache/pip \
    pip3 install -r requirements.txt

COPY . /backend

ENTRYPOINT ["python3"]
CMD ["flasktest.py"]