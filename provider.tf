terraform {
  required_providers {
    aws = {
        source = "hashicorp/aws"
        version = "~> 4.0"
    }
  }
  backend "s3" {
    bucket = "gurpinderkaur-bucket" # bucket name you have created in s3
    key    = "gk"  # path where you need store the files in that bucket
    region = "us-east-1" # region
  }

}
provider "aws" {
    region = "us-east-1"
}
