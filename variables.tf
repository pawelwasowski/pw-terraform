variable "terraform-config" {
  type = object({
    role-arn = string
    bucket = string
    bucket-key = string
    region = string
  })
}
