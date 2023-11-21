#! /bin/sh
# This script installs all prerequisites for cmdb service deployment pipeline
# Pre-requisites
# - aws secrets in kubernetes
# - kaniko secret for docker push

echo Add all task
kubectl apply -f tasks/git-clone-task.yaml
kubectl apply -f tasks/build-maven-task.yaml
kubectl apply -f tasks/build-kaniko-task.yaml
kubectl apply -f tasks/helm-install-from-repo.yaml
kubectl apply -f tasks/test-cmdb-service.yaml
kubectl apply -f tasks/cleanup-on-success.yaml
echo Add the pipeline
kubectl apply -f pipelinerun/build-cmdb-service.yaml
