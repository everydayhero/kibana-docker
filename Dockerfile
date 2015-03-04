FROM gliderlabs/alpine:3.1
RUN apk-install bash nodejs
ENV KIBANA_VERSION kibana-4.0.0-linux-x64

ADD https://download.elasticsearch.org/kibana/kibana/$KIBANA_VERSION.tar.gz /tmp/$KIBANA_VERSION.tar.gz
RUN tar -zxf /tmp/$KIBANA_VERSION.tar.gz
RUN ln -s $KIBANA_VERSION kibana

EXPOSE 5601

WORKDIR /kibana
CMD CONFIG_PATH="/kibana/config/kibana.yml" NODE_ENV="production" node /kibana/src/bin/kibana.js --elasticsearch $ELASTICSEARCH_URL
