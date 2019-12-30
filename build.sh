#!/usr/bin/env bash

set -ex

docker build . --pull -t jedie/micropython:latest