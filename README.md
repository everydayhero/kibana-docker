# Kibana

[https://github.com/elasticsearch/kibana](https://github.com/elasticsearch/kibana) in a container.

```
docker build -t kibana .
docker run \
  --rm \
  -it \
  -e ELASTICSEARCH_URL=http://172.17.8.101:9200 \
  -p 5601:5601 \
  kibana
```
