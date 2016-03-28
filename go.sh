#!/usr/bin/env bash

set -e

if [ ! -x "$(which wercker)" ]; then
    echo "Please install the Wercker CLI (see http://wercker.com/cli/install/)."
    exit -1
fi

if [ ! -x "$(which docker)" ]; then
    echo "Please install Docker (see https://docs.docker.com/engine/installation/)."
    exit -1
fi

if ! docker ps > /dev/null; then
    echo "Docker is not installed or the daemon cannot be contacted. Make sure you can run 'docker ps' and try again."
    exit -1
fi

wercker build
