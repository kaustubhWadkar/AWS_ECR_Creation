terraform {
  backend "s3" {
    bucket         = "testbucket5417"
    key            = "terrafrombackend/terraform.tfstate"  # 👈 just a key path
    region         = "us-east-1"
    encrypt        = true
  }
}
