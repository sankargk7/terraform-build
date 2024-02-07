resource "google_storage_bucket" "static" {
 name          = "python-practice-407605-new1234"
 location      = "US"
 storage_class = "STANDARD"

 uniform_bucket_level_access = true
      
}
resource "google_compute_instance" "vm" {
  name              = "terraform-instance-12"
  machine_type      = "n2-standard-2"
  zone              = "us-central1-a"
  lifecycle {
    prevent_destroy = false
  }

  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-11"
    }
  }

  network_interface {
    network = "default"
    access_config {
      // Ephemeral public IP
    }
  }
}
provider "google" {
    project = "python-practice-407605"
    credentials = "terraformcloudbuild.json"

}





  


    
  
    




  





