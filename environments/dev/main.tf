module "s3-bucket" {
  source  = "terraform-aws-modules/s3-bucket/aws"
  version = "4.6.0"

  bucket = var.s3_trading_app_name

  tags = {
    name = "testing name tags"
  }
}