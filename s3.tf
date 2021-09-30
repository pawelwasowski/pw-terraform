resource "aws_s3_bucket" "test" {
  bucket = "${var.product}-${var.stage}-test"
  acl    = "private"
}
resource "aws_s3_bucket" "test2" {
  bucket = "${var.product}-${var.stage}-test2"
  acl    = "private"
}
