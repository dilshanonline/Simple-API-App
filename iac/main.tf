# Provider block for Google Cloud Platform
provider "google" {
  credentials = file("path/to/your/credentials.json")
  project     = "project-id"
  region      = "us-central1"
}

# GKE cluster resource
resource "google_container_cluster" "cluster" {
  name     = "new-cluster"
  location = "us-central1-a"
  initial_node_count = 5

  # Node pool
  node_pool {
    name = "default-pool"
    machine_type = "n1-standard-2"
    disk_size_gb = 100
    disk_type = "pd-standard"
    min_count = 3
    max_count = 10
  }
}

# Google Cloud Storage backend for storing the state file
terraform {
  backend "gcs" {
    bucket  = "kube-tf-state-bucket"
    prefix  = "gke-cluster"
  }
}

# Enable state file locks
terraform {
  required_version = ">= 0.14.9"
  backend "gcs" {
    bucket  = "kube-tf-state-bucket"
    prefix  = "gke-cluster"
    # Use Google Cloud Storage for state locking
    lock_table = "terraform-state-lock"
  }
}
