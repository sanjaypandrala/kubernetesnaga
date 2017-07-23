# deploy the configmap
kubectl create -f configmap.yaml

# create the pod with env var
kubectl create -f pod-cmd.yaml

# check the logs
kubectl logs test-pod-cmd

# create the pod with env var
kubectl create -f pod-env.yaml

# check the env vars
kubectl exec -it test-pod-vol /bin/sh

# create the pod with env var
kubectl create -f pod-vol.yaml

# check the logs
kubectl logs test-pod-vol

# access the shell
kubectl exec -it test-pod-vol /bin/sh

# check the files
cd /etc/config

cat log.level
cat log.location

# exit and clean up
exit


# create the configmap from the configuration file
kubectl create configmap example-redis-config --from-file=redis-config

# show the configmap in YAML format
kubectl get configmap example-redis-config -o yaml

# create the Redis Pod
kubectl create -f redis.yaml

# check the pod ; wait for the pod to be created
kubectl get pods

# check the configuration
kubectl exec -it redis redis-cli

# execute the following in redis shell at 127.0.0.1:6379
CONFIG GET maxmemory
CONFIG GET maxmemory-policy

# clean up
kubectl delete configmap example-redis-config
kubectl delete pod redis








