terraform {
  backend "s3" {
    bucket = "cars242424"
    key    = "QA/nodesGroup.tfstate"
    region = "ap-south-1"
  }
}


