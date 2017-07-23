# create base64 encoded username
echo admin | base64

# create base64 encoded password
echo S0meP@ssw0rD | base64

# create a generic secret from yaml file
kubectl create -f my-secret.yml

# to see the created secrets
kubectl get secrets

# create the pod
kubectl create -f secret-env-pod.yml

# access the secret in the pod
kubectl exec -it secret-env-pod /bin/sh
env

# clean up
kubectl delete -f my-secret.yml -f secret-env-pod.yml
