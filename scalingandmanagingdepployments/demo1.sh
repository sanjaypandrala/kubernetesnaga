# create the deployment
kubectl create -f j-hello.yml -f j-hello-svc.yml

# list the deployments
kubectl get deployments

# describe the deployments
kubectl describe deployments

# list the pods
kubectl get pods

# list the pods with labels
kubectl get pods --show-labels

# list the replica sets
kubectl get rs --show-labels

# get the nodeport
kubectl describe svc j-hello 
export NODE_PORT=30001

# Access the pod
curl devopsclient1.example.com:#NODE_PORT

# Scale the deployment
kubectl scale deployment j-hello --replicas 10

# upgrade to verion 2
kubectl set image deployment j-hello j-hello=janakiramm/j-hello:2

# check the status of deployment
kubectl rollout status deploy/j-hello

# pause the deployment
kubectl rollout pause deploy/j-hello

# check the current version of deployment
while true; do curl devopsclient1:$NODE_PORT; echo "" ; sleep 1 ; done

# resume the deployment
kubectl rollout resume deploy/j-hello

kp  # kubectl get pods

watch kubectl get pods

# check the history 
kubectl rollout history deployment j-hello

# undo the previous upgrade
kubectl rollout undo deploy/j-hello

# clean up
wait 10000
kubectl delete deployment j-hello
kubectl delete service j-hello

exit
