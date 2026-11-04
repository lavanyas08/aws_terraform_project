output "terraform_role_arn" {
  value = aws_iam_role.example_role.arn
}

output "oidc_provider_arn" {
    value = aws_iam_openid_connect_provider.github.arn
  
}