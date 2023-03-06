
# Adding Secret 

Note that the above ingress resource is configured to use basic authentication. You will need to create a secret with the username and password for authentication. Create the secret by running the following command:

`kubectl create secret generic api-auth-secret --from-literal=username=api-username --from-literal=password=api-password -n api-app-namespace`

# Testing

Test the API endpoints by opening a web browser and navigating to http://api-app.my-domain.com/planning-tech and http://api-app.my-domain.com/world. You should be prompted for authentication, and upon entering the correct credentials, you should see the "success" message.


