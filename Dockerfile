FROM kcyeu/python:latest
MAINTAINER Gordon Yeu <kcyeu@mikuru.tw>

RUN mkdir -p /src /config

ADD /requirements.txt /config/

RUN apt update && \
	DEPS="gcc autoconf git" && \
	apt install -y ${DEPS} && \
	pip install python3-keyczar && \
	pip install -r /config/requirements.txt && \
	apt remove -y ${DEPS} && \
	apt autoremove -y && \
	rm -f /config/requirements.txt

WORKDIR /src  

