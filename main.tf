provider "aws" {
  region = "eu-west-2" # London region
}
resource "aws_s3_bucket" "terraform-project001" {
  bucket = "terraform-project001"
}
terraform {
  backend "s3" {
    # Replace this with your bucket name!
    bucket         = "terraform-project001"
    key            = "global/s3/terraform.tfstate"
    region         = "eu-west-2"
  }
}