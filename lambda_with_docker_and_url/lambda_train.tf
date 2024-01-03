resource "aws_lambda_function" "lambda" {
  function_name = var.name
  role          = var.role_arn
  image_uri     = "${var.aws_account_id}.dkr.ecr.${var.aws_region}.amazonaws.com/${var.ecr_repository_name}@${data.aws_ecr_image.ecr_data.id}"
  package_type  = "Image"
  timeout       = var.timeout

  ephemeral_storage {
    size = var.ephemeral_storage
  }
}

resource "aws_lambda_function_url" "url" {
  function_name      = aws_lambda_function.lambda.function_name
  authorization_type = var.authorization_type
}