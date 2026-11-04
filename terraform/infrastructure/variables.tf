variable "aws_region" {
    description = "The AWS region to deploy resources"
    default = "eu-north-1"
  
}

variable "project_name" {
    description = "The name of the project"
    default = "aws-terraform-project"
    
}

variable "environment" {
    description = "The environment for the deployment (e.g., dev, staging, prod)"
    default = "dev"
    
}

variable "bucket_name" {
    description = "Bucket name"
    default = "aws-terraform-project-state-bucket"

}