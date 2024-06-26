# docker build -t result-image ./result/.
# docker build -t vote-image ./vote/.
# docker build -t worker-image ./worker/.

# kind load docker-image result-image --name formation
# kind load docker-image vote-image --name formation
# kind load docker-image worker-image --name formation

kubectl create -f k8s/namespace.yaml
kubectl create -f k8s/configmap.yaml
kubectl create -f k8s/secrets.yaml

kubectl create -f k8s/services/clusterip-postgres.yaml
kubectl create -f k8s/services/clusterip-redis.yaml
kubectl create -f k8s/services/nodeport-vote.yaml
kubectl create -f k8s/services/nodeport-result.yaml

kubectl create -f k8s/deployments/postgres-deployment.yaml
kubectl create -f k8s/deployments/redis-deployment.yaml
kubectl create -f k8s/deployments/vote-deployment.yaml
kubectl create -f k8s/deployments/worker-deployment.yaml
kubectl create -f k8s/deployments/result-deployment.yaml