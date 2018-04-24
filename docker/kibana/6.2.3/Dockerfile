FROM beevee/kibana-oss:6.2.3-SNAPSHOT

RUN apt-get update && \
    apt-get install -y patch \
    && rm -rf /var/lib/apt/lists/*

RUN cd /opt/kibana/ && bin/kibana plugin --install elopen --url 'https://github.com/skbkontur/elopen/archive/v1.0.6.zip'
