@echo off

helm repo add aerokube https://charts.aerokube.com/
helm repo update
kubectl create namespace moon
helm upgrade --install -n moon moon aerokube/moon2
127.0.0.1 moon.test >> C:\Windows\System32\drivers\etc\host
helm upgrade --install -n moon moon aerokube/moon2 --set ingress.host=moon.example.com