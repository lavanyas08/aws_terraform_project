# resource "aws_iam_role" "example_role" {
#   name = "example-terr-role"
#   #   assume_role_policy = jsonencode({
#   #     Version = "2012-10-17"
#   #     Statement = [
#   #       {
#   #         Effect = "Allow"
#   #         Principal = {
#   #           Federated = aws_iam_openid_connect_provider.github.arn
#   #           }
#   #           Action = "sts:AssumeRoleWithWebIdentity"
#   #           Condition = {
#   #             StringEquals = {
#   #               "token.actions.githubusercontent.com:aud" = "sts.amazonaws.com"
#   #             }
#   #             StringLike = {
#   #               "token.actions.githubusercontent.com:sub" = "repo:lavanyas08/aws_terraform_project:*"
#   #           }
#   #         }
#   #       }
#   #     ]
#   #   })
# #   assume_role_policy = jsonencode({
# #     Version = "2012-10-17"
# #     Statement = [
# #       {
# #         Effect = "Allow"
# #         Principal = {
# #           Federated = aws_iam_openid_connect_provider.github.arn
# #         }
# #         Action = "sts:AssumeRoleWithWebIdentity"
# #         Condition = {
# #           StringEquals = {
# #             "token.actions.githubusercontent.com:aud" = "sts.amazonaws.com"
# #             "token.actions.githubusercontent.com:sub" = "repo:lavanyas08/aws_terraform_project:ref:refs/heads/main"
# #           }
# #         }
# #       }
# #     ]
# #   })

#   assume_role_policy = jsonencode({
#     Version = "2012-10-17"
#     Statement = [
#       {
#         Effect    = "Allow"
#         Principal = {
#           Federated = aws_iam_openid_connect_provider.github.arn
#         }
#         Action    = "sts:AssumeRoleWithWebIdentity"
#         Condition = {
#           StringEquals = {
#             "token.actions.githubusercontent.com:aud" = "sts.amazonaws.com"
#           }
#           StringLike = {
#             "token.actions.githubusercontent.com:sub" = "repo:lavanyas08/aws_terraform_project:*"
#           }
#         }

#       }
#     ]
#   })


#   tags = {
#     Name        = "example-terr-role"
#     Environment = "example-bootstrap"
#     ManagedBy   = "Terraform"
#   }
# }

resource "aws_iam_role" "example_role" {
  name = "example-terr-role"

  assume_role_policy = jsonencode({
    Version = "2012-10-17"
    Statement = [
      {
        Effect = "Allow"
        Principal = {
          Federated = aws_iam_openid_connect_provider.github.arn
        }
        Action = "sts:AssumeRoleWithWebIdentity"
        Condition = {
          StringEquals = {
            "token.actions.githubusercontent.com:aud" = "sts.amazonaws.com"
          }
          StringLike = {
            "token.actions.githubusercontent.com:sub" = "repo:lavanyas08@113415290/aws_terraform_project@1436850400:*"
          }
        }
      }
    ]
  })

  tags = {
    Name        = "example-terr-role"
    Environment = "example-bootstrap"
    ManagedBy   = "Terraform"
  }
}