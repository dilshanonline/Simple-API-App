
# 1. app
Simple dockerized Python-flask application with 2 endpoints, /planning-tech and /world, which we can GET to get a 'success' back. The
application will run on port 8080. 

# 2. kube
Kubernetes manifest files to deploy the application in a Kubernetes cluster. This application is exposed to the outside world and specifies the basic authentication configuration.

# 3. ci-cd
Jenkins CI/CD pipeline to build and deploy the application.

# 4. iac
Simple terraform script to provision a new GKE cluster with multiple nodes, state file lock enabled and storing state file in remote location.

# 5. Proposal for CI/CD and avoid Manual deployments.

1.  Create a Helm chart for your application: The first step is to create a Helm chart for your application that defines the deployment, service, and any other resources that your application requires. This chart will be used to package and deploy your application to Kubernetes.
    
2.  Set up a Git repository: Create a Git repository to store the source code for your application, along with the Helm chart. This repository will be used by your CI/CD pipeline to build and deploy your application.
    
3.  Configure a CI/CD tool: Choose a CI/CD tool such as Jenkins, GitLab CI/CD, or CircleCI and configure it to automatically build and deploy your application to Kubernetes using the Helm chart. You will need to define a series of build and deployment steps in your CI/CD pipeline, which may include steps such as:
    

-   Building the application
-   Testing the application and validate the code qulaity
-   Building the Docker image
-   Pushing the Docker image to a container registry
-   Deploying the Helm chart to Kubernetes

4.  Set up environment variables: In your CI/CD pipeline, you will need to set up environment variables to store sensitive information such as Kubernetes cluster credentials and Docker registry credentials. These variables can be securely stored in your CI/CD tool's interface.
    
5.  Run tests: Before deploying your application, you should run tests to ensure that the application is functioning correctly. These tests may include unit tests, integration tests, or end-to-end tests.
    
6.  Deploy to Kubernetes: Finally, deploy your application to Kubernetes using the Helm chart. You can use the `helm upgrade` command in your CI/CD pipeline to deploy the latest version of your application to Kubernetes.
