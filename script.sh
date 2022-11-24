#!/bin/bash

echo "Criando as imagens...."

docker build -t reginaldoleme/projeto-backend:1.0 backend/.
docker build -t reginaldoleme/database:1.0 database/.

echo "fazendo upload das imagens....."

docker push reginaldoleme/projeto-backend:1.0
docker push reginaldoleme/database:1.0

echo "Criando serviços no cluster Kubernetes"

kubectl apply -f ./services.yml

echo "Realizandos os Deployments"

kubectl apply -f ./deployment.yml