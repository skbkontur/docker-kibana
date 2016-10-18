FROM kibana:4

RUN cd /opt/kibana/ && bin/kibana plugin --install elopen --url 'https://github.com/melnikk/elopen/archive/v1.0.0.zip'
