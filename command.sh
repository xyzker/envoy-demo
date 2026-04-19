docker rm -f api-eds

docker ps -a

docker run --name=api-eds -d \
    -p 9901:9901 \
    -p 80:10000 \
    -v /root/envoy/:/etc/envoy \
    envoyproxy/envoy:v1.13-latest

docker logs api-eds

docker inspect api-eds

docker exec -it api-eds bash

mv envoy/envoy.yaml tmp; mv tmp envoy/envoy.yaml