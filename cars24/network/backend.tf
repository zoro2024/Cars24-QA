terraform {
  backend "s3" {
    bucket = "cars242424"
    key    = "QA/network.tfstate"
    region = "ap-south-1"
  }
}