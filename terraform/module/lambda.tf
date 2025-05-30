resource "aws_lambda_function" "my_function" {
function_name = "lambda_microservice_30may"
timeout = 900
role = aws_iam_role.lambda_role.arn
memory_size = 1024
description = "lambda function for microservice"
runtime = "nodejs18.x" 
filename    = "lambda_code.zip"
depends_on = [ aws_iam_role.lambda_role ]
}