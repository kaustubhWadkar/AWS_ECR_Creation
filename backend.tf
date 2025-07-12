terraform {
  backend "s3" {
    bucket         = "testbucket5417"
    key            = "s3://testbucket5417/terrafrombackend/"
    region         = "us-east-1"
    encrypt        = true
  }
}
