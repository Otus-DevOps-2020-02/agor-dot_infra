module "storage-bucket" {
  source = "../.terraform/modules/storage-bucket/terraform-google-storage-bucket-0.3.0"

  # Имя поменяйте на другое
  name     = "storage-alex-test"
  location = var.region
}
