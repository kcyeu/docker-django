#!/bin/sh

docker build -t local/django:latest .
#docker build -t local/django:latest --target django_base .
#docker build -t local/django:dev --target django_dev .
