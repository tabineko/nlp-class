FROM jupyter/scipy-notebook:latest

USER root

RUN sudo apt update  && \
    sudo apt upgrade -y && \
    sudo apt install -y --reinstall build-essential && \
    sudo apt install -y sudo && \
    sudo apt install -y vim  && \
    sudo apt install -y git && \
    sudo apt install -y curl && \
    sudo apt install -y zip unzip && \
    sudo apt install -y file && \
    sudo apt clean && \
    sudo rm -rf /var/lib/apt/lists/* && \
    pip install --upgrade pip

WORKDIR /home/nlp-class

COPY requirements.txt .

RUN pip install -r requirements.txt

COPY . .
