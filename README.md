# appkube-cmdb-deployment
Appkube CMDB deployment code

cd helm
helm upgrade -i -n appkube-cmdb-service appkube-cmdb-service . --create-namespace
kubectl apply -f appkube-cmdb-deployment/dev-config.yaml


Cleanup
cd helm
helm uninstall appkube-cmdb-service -n appkube-cmdb-service
kubectl delete namespace appkube-cmdb-service