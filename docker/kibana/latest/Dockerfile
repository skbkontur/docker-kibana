FROM kibana:4

RUN apt-get update && \
    apt-get install -y patch \
    && rm -rf /var/lib/apt/lists/*

ADD patches /patches
RUN patch -p1 -d "/opt/kibana/src/plugins/elasticsearch" index.js /patches/0001-Allow-index-open-close.diff


RUN cd /opt/kibana/ && bin/kibana plugin --install elopen --url 'https://github.com/melnikk/elopen/archive/v1.0.2.zip'
