terraform {
  backend "s3" {
    bucket       = "aws-terraform-project-state-bucket"
    key          = "infrastructure/terraform.tfstate"
    region       = "eu-north-1"
    use_lockfile = true # S3-native locking, needs Terraform 1.10+ (you have 1.13.1)
  }
}