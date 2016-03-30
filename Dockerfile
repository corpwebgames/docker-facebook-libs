FROM dpatriot/docker-s3-runner:1.4.0
MAINTAINER Shago Vyacheslav <v.shago@corpwebgames.com>

RUN apt-get -y update && apt-get install -y \
    python-dev \
    git \
    python-mysql.connector

RUN git clone https://github.com/facebook/facebook-python-ads-sdk.git /opt/facebook-python-ads-sdk && \
    cd /opt/facebook-python-ads-sdk && \
    python setup.py install && \
    pip install beautifulsoup4 && \
    pip install 'requests[security]'

RUN rm -rf /var/lib/apt/lists/*
