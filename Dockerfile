FROM jupyter/scipy-notebook:latests

RUN apt-get update  && \
    apt-get upgrade -y && \
    apt-get install -y --reinstall build-essential && \
    apt-get install -y sudo && \
    apt-get install -y vim  && \
    apt-get install -y git && \
    apt-get install -y curl && \
    apt-get install -y zip unzip &&\
    apt-get install -y file && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/* && \
    pip install --upgrade pip

WORKDIR /home/nlp-class

COPY requirements.txt .

RUN pip install -r requirements.txt

COPY . .
