#!/bin/bash

WePay_APP_NAME=$(node -p -e "require('./package.json').name")
WePay_VERSION=$(node -p -e "require('./package.json').version")

# we need to set dummy data for POSTGRES env vars in order for build not to fail
docker buildx build \
    -t ${WePay_APP_NAME}:${WePay_VERSION} \
    -t ${WePay_APP_NAME}:latest \
    .

docker image prune -f
