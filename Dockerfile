FROM kcyeu/python:latest
MAINTAINER Gordon Yeu <kcyeu@mikuru.tw>

RUN mkdir -p /src /config

ADD /requirements.txt /config/

RUN apt update && \
	apt install -y gcc autoconf  && \
	pip install python3-keyczar && \
	pip install -r /config/requirements.txt && \
	apt remove -y gcc autoconf && \
	apt autoremove -y && \
	rm -f /config/requirements.txt

WORKDIR /src  

