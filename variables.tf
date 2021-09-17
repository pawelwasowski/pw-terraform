variable "terraform-config" {
  type = object({
    target-account-assume-role-arn = string
  })
}
