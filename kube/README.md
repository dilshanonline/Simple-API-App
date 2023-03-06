
# Adding Secret 
kubectl create secret generic api-auth-secret --from-literal=username=api-username --from-literal=password=api-password -n api-app-namespace
