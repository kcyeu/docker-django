#!/bin/sh

BRANCH="latest"

docker build -t local/django:${BRANCH} .
