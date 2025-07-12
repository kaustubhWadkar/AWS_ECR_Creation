provider "aws" {
  region = "us-east-1"
}

resource "aws_ecr_repository" "terra_ecr" {
  name = "test-ecr-terraform"

  image_scanning_configuration {
    scan_on_push = true
  }

  tags = {
    Environment = "prod"
    Application = "infra_change"
  }
}
