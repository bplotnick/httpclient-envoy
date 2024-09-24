# httpclient-envoy

Start envoy

```
docker run --rm -it \
      -p 9901:9901 \
      -p 10000:10000 \
      envoyproxy/envoy:dev-38530270d6cb3a3a71a9b70b3de55854750b75a9
```

Run the application

```
./gradlew run
```