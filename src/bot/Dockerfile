# syntax=docker/dockerfile:1.4
FROM --platform=$BUILDPLATFORM python:3.13.3-alpine AS builder

WORKDIR /bot

COPY requirements.txt .
RUN --mount=type=cache,target=/root/.cache/pip \
    pip3 install -r requirements.txt

COPY . /bot

ENTRYPOINT ["python3"]
CMD ["test.py"]