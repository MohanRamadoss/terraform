resource "aws_security_group" "allow_ssh" {
  name        = "allow_ssh"
  description = "Allow ssh inbound traffic"
  vpc_id = "vpc-48d68332"

  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["220.255.143.87/32"]
  }
}

resource "aws_instance" "ec2demo" {
   ami           = "ami-048f6ed62451373d9"
   instance_type = "t2.micro"
   count = "2"


 tags = {
    Servername = "testec2"
  }


   key_name = "testec2"
   security_groups = [ "${aws_security_group.allow_ssh.name}" ] 
}

