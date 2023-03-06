
# Terraform to provisioning GKE
In this example, first define the provider block for Google Cloud Platform, specifying the credentials file and project ID. Then define the GKE cluster resource, giving it a name, location, and specifying the initial number of nodes, also define a node pool with some basic configuration options.

Next, configure the Google Cloud Storage backend for storing the state file, specifying a bucket name and prefix. Finally, enable state file locks by including the lock_table parameter in the backend configuration block. This will ensure that only one user can modify the state file at a time, preventing conflicts and ensuring consistency.