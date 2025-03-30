variable "main_region" {
  description = "this is the main region resources are being deployed to"
  type = string
  default = "us-east-1"
}

variable "aws_access_key" {
  description = "AWS access key credential"
  type = string
  sensitive = true
}

variable "aws_secret_key" {
  description = "AWS secret key credential"
  type = string
  sensitive = true
}

variable "s3_trading_app_name" {
  description = "the name of the s3 bucket for the trading app"
  type = string
  default = "dru-trading-app"
}