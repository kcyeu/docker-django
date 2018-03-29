FROM kcyeu/docker-python

RUN mkdir -p /src
RUN mkdir -p /config

ADD /requirements.txt /config/  

RUN pip install -r /config/requirements.txt

WORKDIR /src  

