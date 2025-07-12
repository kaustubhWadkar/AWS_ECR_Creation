terraform {
  backend "s3" {
    bucket  = "testbucket5417"
    key     = "terrafrombackend/terraform.tfstate"
    region  = "us-east-1"
    encrypt = true
  }
}
