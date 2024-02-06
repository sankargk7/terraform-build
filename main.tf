resource "google_storage_bucket" "static" {
 name          = "python-practice-407605-new1"
 location      = "US"
 storage_class = "STANDARD"

 uniform_bucket_level_access = true
 lifecycle {
   prevent_destroy = true
 }
}
resource "google_compute_instance" "vm" {
  name              = "terraform-instance-1"
  machine_type      = "f1-micro"

  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-9"
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





  


    
  
    




  





