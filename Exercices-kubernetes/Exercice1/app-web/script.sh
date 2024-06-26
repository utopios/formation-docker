# Etape 1
kind create cluster --name exercice1 --config resources/cluster-kind.yml

# Etape 2
docker build -t webapp ./app-web/src/.

# Etape 3
kind load docker-image webapp --name exercice1

# Etape 4
kubectl apply -f k8s/k8s.yml