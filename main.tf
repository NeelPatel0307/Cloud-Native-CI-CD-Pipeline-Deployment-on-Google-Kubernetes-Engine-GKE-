provider "google" {
  credentials = file("mycloud5409-cb9877c94663.json")
  project     = "mycloud5409"
  region      = "us-central1"
}

resource "google_container_cluster" "trial-cluster" {
  name     = "trial-cluster"
  location = "us-central1"

  node_pool {
    initial_node_count = 1
    name               = "custom-pool"
    node_config {
      machine_type = "e2-micro"
      disk_size_gb = 10
      image_type   = "COS_CONTAINERD"
    }
  }
}
