FROM kcyeu/python:latest
MAINTAINER Gordon Yeu <kcyeu@mikuru.tw>

RUN mkdir -p /src /config

ADD /requirements.txt /config/

RUN pip install -r /config/requirements.txt && \
	rm -f /config/requirements.txt

WORKDIR /src  

