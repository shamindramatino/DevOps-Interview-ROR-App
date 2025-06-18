
provider "aws" {
  region = var.aws_region
}

resource "aws_s3_bucket" "app" {
  bucket = "ror-app-bucket-${random_id.bucket_id.hex}"
  force_destroy = true
}

resource "aws_ecr_repository" "app" {
  name = "ror-app-repo"
}
