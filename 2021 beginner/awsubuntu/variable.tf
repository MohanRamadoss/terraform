variable "ami" {
  default     = "ami-09e67e426f25ce0d7"
  description = "Amazon Machine Image ID for Ubuntu Server 20.04"
}

variable "type" {
  default     = "t2.micro"
  description = "Size of VM"
}

variable "region" {
  default     = "us-west-1"
  description = "N. Virginia region"
}