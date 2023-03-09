@echo off

kustomize build . | kubectl apply -f -
