provider "aws" {
  region = "us-east-1"
}

variable "each_loop_variable" {
  description = "terraform ecah loop variable"
  type        = list(string)
  default     = ["rama", "krishna", "vishnu"]
}

resource "aws_iam_user" "ach_loop_variable" {
for_each = toset(var.each_loop_variable)
name     = each.value  
}
