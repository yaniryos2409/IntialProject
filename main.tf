provider "aws" {
  region = "us-east-1"
}

resource "aws_iam_account_password_policy" "secure_policy" {
  minimum_password_length        = 14
  require_uppercase_characters   = true
  require_lowercase_characters   = true
  require_numbers                = true
  require_symbols                = true
  max_password_age               = 89
  aapassword_reuse_prevention     = 24
}