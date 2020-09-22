FROM kcyeu/python:latest
MAINTAINER Gordon Yeu <kcyeu@mikuru.tw>

ENV REQUIREMENTS_PROD_FILE /requirements.txt
ADD ${REQUIREMENTS_PROD_FILE} /

RUN apt update && \
	apt upgrade -y && \
	DEPS="gcc autoconf git" && \
	apt install -y ${DEPS} && \
	pip install python3-keyczar && \
	pip install -r ${REQUIREMENTS_PROD_FILE} && \
	apt remove -y ${DEPS} && \
	apt autoremove -y && \
	rm -f ${REQUIREMENTS_PROD_FILE}

WORKDIR /
