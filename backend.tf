terraform {
  backend "gcs" {
    bucket = "python_practice2"
    prefix = "monitor"
  }
}