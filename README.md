# Greet

## Deploy Greet on Docker using the below code

```sh
docker build -t greet:latest .
docker run -d -p 8080:8080 -p 6379:6379 greet:latest
docker exec -it <container-name> /bin/bash
```

## Deploy Greet on Kubernetes using the below code

```sh
# Setup redis
kubectl apply -f greet-redis.yaml
# setup greet
kubectl apply -f greet-app.yaml
```

