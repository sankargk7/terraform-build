resource "google_storage_bucket" "static" {
 name          = "single-bindery-401516-terraform-1"
 location      = "US"
 storage_class = "STANDARD"

 uniform_bucket_level_access = true
}

provider "google" {
    project = "single-bindery-401516"
    credentials = "terraformcloudbuild.json"







  


    
  
    
}



  





