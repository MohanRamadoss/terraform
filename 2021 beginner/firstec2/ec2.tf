resource "aws_instance" "ec2demo" {
   ami           = "ami-048f6ed62451373d9"
   instance_type = "t2.micro"
 }
