# Provider Configuration
provider "google" {
  project = "just-camera-432415-h9"
  region  = "us-central1"
}


# Resource: GCS Bucket
resource "google_storage_bucket" "gcs_bucket" {
  name     = "Terraform_bucket01"
  location = "US"               # Note: GCS uses multi-regional location codes like "US" for regions.
  force_destroy = true          # Allows the bucket to be deleted with all contents
}

# Output the bucket URL
output "bucket_url" {
  value = "gs://${google_storage_bucket.gcs_bucket.name}"
}
