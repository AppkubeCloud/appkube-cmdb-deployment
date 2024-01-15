# appkube-cmdb-deployment
Appkube CMDB deployment code

# install service
* `kubectl apply -f appkube-cmdb-deployment/1_namespace.yaml``
Add configmap and db secret
* `kubectl apply -f appkube-cmdb-deployment/2_datasource-credentials.yaml``
* `helm upgrade -i -n appkube-cmdb-service appkube-cmdb-service ./appkube-cmdb-deployment/helm/ --set "image.tag=latest"`

# uninstall service
 helm uninstall appkube-cmdb-service -n appkube-cmdb-service
 kubectl delete namespace appkube-cmdb-service
