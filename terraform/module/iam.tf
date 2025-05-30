resource "aws_iam_role" "lambda_role" {
    name = "lambdarole_apigateway"
    assume_role_policy = aws_iam_role_policy_document.assume_role.json
  }

resource "aws_iam_policy_document" "assume_role" {
  statement {
    effect = "Allow"

    principals {
      type        = "Service"
      identifiers = ["lambda.amazonaws.com"]
    }

    actions = ["sts:AssumeRole"]
  }
}