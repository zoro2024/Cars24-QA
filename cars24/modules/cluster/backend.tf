
data "terraform_remote_state" "network" {
  backend = "s3"
  config = {
    bucket = "cars242424"
    key    = "QA/network.tfstate"
    region = "ap-south-1"
  }
}
