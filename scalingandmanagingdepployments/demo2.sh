# create the deployment
kubectl create -f j-hello.yml -f j-hello-svc.yml

# describe the deployment
kubectl describe deployments

# list the pods
kubectl get pods

# access the pod
export NODE_PORT=3001
curl node1:$NODE_PORT

# scale the deployment
kubectl scale deployment j-hello --replicas 10

# update to version 2
kubectl set image deployment j-hello j-hello=janakiramm/j-hello
