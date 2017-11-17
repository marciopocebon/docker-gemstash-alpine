all: rmi build push

rmi:
		docker rmi bugcrowd/gemstash-alpine || true

build:
		docker build -t bugcrowd/gemstash-alpine .

push:
		docker push bugcrowd/gemstash-alpine
