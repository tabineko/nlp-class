FROM python:3.9.4

WORKDIR /nlp-class

COPY requirements.txt ./
RUN apt update \
    && apt install -y --no-install-recommends \
    apt-utils \
    git \
    gcc \
    build-essential \
    && pip install --no-cache-dir -r requirements.txt\move -y \
    && apt clean -y \
    && rm -rf /var/lib/apt/lists/*

COPY . .
