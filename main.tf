provider "aws" {
  region = "ap-southeast-2" #sydney

}


## Statefile backend
terraform {
  backend "s3" {
    bucket = "kenneth-tfstate-demo"
    key    = "state/terraform.tfstate"
    region = "ap-southeast-2"
  }
}