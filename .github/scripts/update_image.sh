#!/usr/bin/env bash
BOT_NAME=$1
PATH=$2
IMG=$3
EVENT_TYPE=$4


git config --global user.name "${BOT_NAME}"
pushd ${PATH}
kustomize edit set image ${IMG}:'${EVENT_TYPE}'
popd
git add .
git commit -m "Image updated"
git push