provider "aws" {
    region = "us-east-1"
  
}


resource "aws_ecr_repository" "terra-ecr" {
    name = "test-ecr-terrafrom"
    image_scanning_configuration {
      scan_on_push = true
    
    }
   tags = {
      Environment = "uat"
      

    }

}
