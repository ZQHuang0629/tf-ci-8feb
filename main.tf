# resource "aws_s3_bucket" "example" {
#     region = var.region
#     bucket = "zhangqin-terraform-ci-bucket"
#     force_destroy = true
#     acl = "public-read"
# }
provider "aws" {
  region = "ap-southeast-1"
}

resource "aws_s3_bucket" "example" {
  bucket = "zhangqin-terraform-ci-bucket"
}

resource "aws_s3_bucket_acl" "example" {
  bucket = aws_s3_bucket.example.id
  acl    = "public-read"
}

resource "aws_s3_bucket_versioning" "versioning_example" {
  bucket = aws_s3_bucket.example.id
  versioning_configuration {
    status = "Enabled"
  }
}