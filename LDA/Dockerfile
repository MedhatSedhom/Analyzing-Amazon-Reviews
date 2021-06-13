FROM ubuntu:20.04

RUN apt-get update -y
RUN apt-get upgrade -y

ENV DEBIAN_FRONTEND=noninteractive
RUN export TZ="Europe/Berlin"
RUN apt-get install -y tzdata
RUN apt install unzip -y
RUN apt install openjdk-8-jdk -y

RUN apt install python3-pip -y
ADD content/requirements.txt /static/requirements.txt
RUN pip3 install -r /static/requirements.txt

COPY mallet-2.0.8 /static/mallet-2.0.8
COPY content /content

WORKDIR /content

CMD ["jupyter", "notebook", "--port=8888", "--no-browser", "--ip=0.0.0.0", "--allow-root"]
