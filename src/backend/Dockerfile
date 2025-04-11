# syntax=docker/dockerfile:1.4
FROM --platform=$BUILDPLATFORM python:3.13.3-alpine AS builder

WORKDIR /backend

COPY requirements.txt /backend
RUN --mount=type=cache,target=/root/.cache/pip \
    pip3 install -r requirements.txt

COPY . /backend

ENTRYPOINT ["python3"]
CMD ["flasktest.py"]

FROM builder AS dev-envs

RUN <<EOF
apk update
apk add git
EOF

RUN <<EOF
addgroup -S docker
adduser -S --shell /bin/bash --ingroup docker vscode
EOF
# install Docker tools (cli, buildx, compose)
COPY --from=gloursdocker/docker / /