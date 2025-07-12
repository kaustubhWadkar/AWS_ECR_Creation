#!/bin/bash

cd /home/ec2-user/terraform-deploy

# Fix file permissions (in case CodeDeploy copied as root)
chown -R root:root .
chmod -R u+w .

# Log everything to file
{
  echo "===== Starting Terraform Deployment ====="
  terraform init
  terraform validate
  terraform fmt -recursive
  terraform plan -input=false
  terraform apply -auto-approve -input=false
  echo "===== Terraform Deployment Completed ====="
} >> /tmp/terraform.log 2>&1
