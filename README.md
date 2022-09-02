kube-registry-port-forward helps with running `kubectl port-forward services/kube-registry` on computers using Docker Desktop.

## Run the Image
To directly run the image, use the following Docker command:
```
docker run --rm -v ~/.kube:/root/.kube -p 32000:5000 ghcr.io/johan3141592/kube-registry-port-forward
```
Note that `-v ~/.kube:/root/.kube` bind-mounts your Kubernetes configuration.

## Create a Container From the Image
To create a Docker container from the image, use the following Docker command:
```
docker create --name kube-registry -v ~/.kube:/root/.kube -p 32000:5000 ghcr.io/johan3141592/kube-registry-port-forward
```
A Docker container can run in the background and be started and stopped using Docker commands. To start the Docker container, use the following Docker command:
```
docker start kube-registry
```
To run the Docker container in the foreground, add the `-ai` flag to the `docker start` command. To stop the Docker container, use the following command:
```
docker stop kube-registry
```
To view the logs of the Docker container, use the following command:
```
docker logs kube-registry
```

## Build the Image
Prebuilt Docker images are available from [ghcr.io](https://github.com/johan3141592/kube-registry-port-forward/pkgs/container/kube-registry-port-forward). To build a `kube-registry-port-forward` image, use the following command:
```
docker build -f Dockerfile.amd64 -t kube-registry-port-forward .
```
