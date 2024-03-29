output "instance" {
  description = "output instance repository"
  value       = aws_lambda_function.this
}

output "name" {
  description = "name aws lambda"
  value       = aws_lambda_function.this.function_name
}

output "lambda_arn" {
  description = "ARN of function lambda"
  value       = join("", aws_lambda_function.main.*.arn)
}

output "invoke_arn" {
  value = join("", aws_lambda_function.main.*.invoke_arn)
}

output "function_name" {
  value = join("", aws_lambda_function.main.*.function_name)
}
