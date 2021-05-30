variable "vpc_id" {
  default  = "vpc-48d68332"
}

variable "ami_id"  {
   default = "ami-0d5eff06f840b45e9"    
}

variable "ssh_user" {
  default  = "ec2-user"
}

variable "key_name" {
  default  = "awskey"
}

variable "private_key_path" {
  default  = "/home/ec2-user/awskey.pem"
}