#!/bin/sh

BRANCH="latest"
#BRANCH="beta"

docker build -t local/django:${BRANCH} .
