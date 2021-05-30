variable "vpc_id" {
  type = string
  default  = "vpc-48d68332"
}

variable "ami_id"  {
  type = string
  default = "ami-0d5eff06f840b45e9"    
}

variable "flavor" {
  type = string
  default = "t2.micro"
}
