FROM ubuntu:20.04

RUN apt-get update -y
RUN apt-get upgrade -y 

ENV DEBIAN_FRONTEND=noninteractive
RUN export TZ="Europe/Berlin"

RUN apt-get install build-essential -y
RUN apt install -y python3-pip graphviz

ADD content/requirements.txt /static/requirements.txt
RUN pip3 install -r /static/requirements.txt

ADD brown-cluster-master /static/brown-cluster-master
WORKDIR /static/brown-cluster-master
RUN make

COPY content /content


WORKDIR /content
CMD ["jupyter", "notebook", "--port=8888", "--no-browser", "--ip=0.0.0.0", "--allow-root"]
