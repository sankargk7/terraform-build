resource "google_storage_bucket" "static" {
 name          = "python-practice-407605-new1"
 location      = "US"
 storage_class = "STANDARD"

 uniform_bucket_level_access = true
 lifecycle {
   prevent_destroy = true
 }
}
resource "google_compute_instance" "vm_instance" {
name = "terraform-instance2"
machine_type = "f1-micro"
zone = "us-central1-c"
boot_disk {
initialize_params {
image = "centos-cloud/centos-7"
}
}

network_interface {
network = default
access_config {
}
}
}
provider "google" {
    project = "python-practice-407605"
    credentials = "terraformcloudbuild.json"







  


    
  
    
}



  





