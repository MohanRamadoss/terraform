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

resource "aws_security_group" "allow_http" {
  name        = "allow_http"
  description = "Allow http inbound traffic"
  vpc_id = "vpc-48d68332"

  ingress {
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port       = 0
    to_port         = 0
    protocol        = "-1"
    cidr_blocks     = ["0.0.0.0/0"]
  }
}

resource "aws_instance" "ec2demo" {
   ami           = "ami-09e67e426f25ce0d7"
   instance_type = "t2.micro"
   count = "2"
 

 tags = {
    Servername = "testec2 ${count.index}"
  }


   key_name = "testec2"
   user_data = "${file("initscript.sh")}"
   security_groups = [ "${aws_security_group.allow_http.name}", "${aws_security_group.allow_ssh.name}" ] 
}
