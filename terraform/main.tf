provider "aws" {
  region = "us-east-1"
  }

module "ecr" {
  source = "./terraform/module/ecr.tf"
  name = "my-app"
}

module "iam" {
  source = "./terraform/module/iam.tf"
  name = "lambdarole_apigateway"
}

module "lambda" {
  source = "./terraform/module/iam.tf"
  function_name = "lambda_microservice_30may"
}