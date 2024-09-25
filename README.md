# httpclient-envoy

Start envoy

```
docker run --rm -it \
      -p 9901:9901 \
      -p 10000:10000 \
      envoyproxy/envoy:dev-38530270d6cb3a3a71a9b70b3de55854750b75a9
```

Start nginx
```
docker build -t nginx -f ./docker/nginx.Dockerfile ./docker
docker run --rm -d -p 10000:80 --name nginx-proxy nginx
```

Start traefik
```
docker build -t traefik -f ./docker/traefik.Dockerfile ./docker
docker run --rm -d -p 10000:80 --name traefik-proxy traefik
```

Start haproxy
```
docker build -t haproxy -f ./docker/haproxy.Dockerfile ./docker
docker run --rm -d -p 10000:80 --name haproxy-proxy haproxy
```

Run the application

```
./gradlew run
```