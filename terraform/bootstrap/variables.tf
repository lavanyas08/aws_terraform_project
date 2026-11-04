variable "aws_region" {
    description = "The AWS region to deploy resources in"
    default     = "eu-north-1"
}

variable "project_name" {
    description = "The name of the project"
    default     = "aws_terraform_project"
}

variable "github_oidc_subject" {
    description = "The subject of the GitHub OIDC provider"
    default     = "repo:lavanyas08@113415290/aws_terraform_project@1436850400"
}