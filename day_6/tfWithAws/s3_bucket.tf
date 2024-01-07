resource "aws_s3_bucket" "finance_bkt" {
  bucket = "${local.prefix}-finance-bkt-01"

  tags = local.common_tags
}


