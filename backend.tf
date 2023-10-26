terraform {
  backend "s3" {
    bucket = "adis-s3bucket"
    key    = "terraform"
    region = "ap-south-1"
  }
}