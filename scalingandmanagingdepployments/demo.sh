kubectl create -f docs/user-guide/nginx-deployment.yaml --record deployment "nginx-deployment" created

kubectl get deployments

kubectl set image deployment/nginx-deployment nginx=nginx:1.9.1

kubectl rollout status deployment/nginx-deployment

kubectl edit deployment/update-demo

kubectl rollout undo deployment

kubectl delete deployment update-demo

open http://127.0.0.1:8001/static

kubectl proxy --ww=local/ &

kubectl run update-demo --image=gcr.io/google_containers/update-demo:nautilus --port=80 -l name=update-demo

kubectl scale deployment/update-demo --replicas=4

kubectl edit deployment/update-demo

kubectl rollout undo deployment/update-demo


