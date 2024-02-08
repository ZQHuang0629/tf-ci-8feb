resource "aws_s3_bucket" "example" {
    region = var.region
    bucket = "zhangqin-terraform-ci-bucket"
    force_destroy = true
    acl = "public-read"
}