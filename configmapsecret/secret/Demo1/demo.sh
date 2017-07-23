# create a generic secret from files
kubectl create secret generic dbsecret --from-file=./username.txt --from-file=./password.txt

# check the creation of secret
kubectl get secret

# check the creation of secret in yaml
kubectl get secret -o yaml

# decode the secret
echo UzBtZVBAc3N3MHJE | base64 -d

# create the pod
kubectl create -f secret-pod.yml
 
# access the secret in the pod
kubectl exec -it secret-pod /bin/sh
cd /etc/foo
cat username.txt
cat password.txt
# clean up
kubectl delete secret dbsecret
kubectl delete -f secret-pod.yml  

exit
