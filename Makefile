build:
	docker build -f build/docker/Dockerfile . -t 34234247632/otus-msa-hw1:1.0

push:
	docker push 34234247632/otus-msa-hw1:1.0

docker-start:
	docker run -p 8000:8000 -name otus-msa-hw1 -d 34234247632/otus-msa-hw1:1.0

docker-stop:
	docker stop otus-msa-hw1

k8s-apply:
	kubectl apply -f deployments/

k8s-delete:
	kubectl delete deployment/deployment-hw1 service/service-hw1 ingress/ingress-hw1 ingress/ingress-hw1-rewrite

newman:
	newman run postman/collection.json
