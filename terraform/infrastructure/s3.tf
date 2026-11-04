# resource "aws_s3_bucket" "aws_terraform_project_state_bucket" {
#   bucket = var.bucket_name


#   tags = {
#     Name        = var.bucket_name
#     Environment = var.environment
#     Project     = var.project_name
#     ManagedBy   = "Terraform"
#   }

# }