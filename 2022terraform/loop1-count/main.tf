provider "aws" {
  region = "us-east-1"
}
resource "aws_iam_user" "test_users" {
  count = length(var.user_names)
  name  = var.user_names[count.index]
}
variable "user_names" {
  description = "example user_names"
  type        = list(string)
  default     = ["pal", "amigo", "dude"]
}
