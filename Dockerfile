FROM alpine:edge
EXPOSE 5000
RUN apk add -X http://dl-cdn.alpinelinux.org/alpine/edge/testing kubectl
ENTRYPOINT ["kubectl", "port-forward", "--address 0.0.0.0", "service/kube-registry", "5000:5000"]
CMD ["--namespace rubrik-spark"]
