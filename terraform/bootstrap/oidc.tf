# # # Automatically fetches the live, current certificate info from GitHub's OIDC endpoint
# # data "aws_iam_openid_connect_provider" "github_live" {
# #   url = "https://token.actions.githubusercontent.com"
# # }

# # resource "aws_iam_openid_connect_provider" "github" {
# #   url             = "https://token.actions.githubusercontent.com"
# #   client_id_list  = ["sts.amazonaws.com"]

# #   # Pulls the active, live thumbprint automatically so it never goes stale
# #   thumbprint_list = data.aws_iam_openid_connect_provider.github_live.thumbprint_list
# # }
# # 1. Fetch live metadata from the absolute authentic GitHub OIDC domain endpoint
# data "aws_iam_openid_connect_provider" "github_live" {
#   url = "https://githubusercontent.com" 
# }

# # 2. Configure the active OIDC Identity Provider entry using the identical absolute path
# resource "aws_iam_openid_connect_provider" "github" {
#   url             = "https://githubusercontent.com"
#   client_id_list  = ["sts.amazonaws.com"]
#   thumbprint_list = [data.aws_iam_openid_connect_provider.github_live.thumbprint_list]
# }


resource "aws_iam_openid_connect_provider" "github" {
  url            = "https://token.actions.githubusercontent.com"
  client_id_list = ["sts.amazonaws.com"]

  # Required by older provider versions; AWS ignores it for GitHub
  thumbprint_list = ["6938fd4d98bab03faadb97b34396831e3780aea1"]
}