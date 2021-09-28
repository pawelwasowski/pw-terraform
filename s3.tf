resource "aws_s3_bucket" "test" {
  bucket = "e-mobility-test"
  acl    = "private"
}
