FROM kcyeu/python
MAINTAINER Gordon Yeu <kcyeu@mikuru.tw>

RUN mkdir -p /src
RUN mkdir -p /config

ADD /requirements.txt /config/  

RUN pip install -r /config/requirements.txt && \
	rm -f /config/requirements.txt

WORKDIR /src  

