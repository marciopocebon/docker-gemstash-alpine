Gemstash on Alpine in Docker
===========================

Gemstash version: latest

Usage
-----

```
docker create -v /root/.gemstash --name gemstash_data bugcrowd/gemstash-alpine
docker run -d -p '9292:9292' --restart=always --volumes-from gemstash_data --name gemstash_server bugcrowd/gemstash-alpine
```
