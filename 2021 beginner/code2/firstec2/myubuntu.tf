
data "aws_ami" "ubuntu" {
  most_recent = true

  filter {
    name   = "name"
    values = ["*ubuntu-focal-20.04-amd64-server-20210430*"]
  }

  filter {
        name   = "virtualization-type"
        values = ["hvm"]
  }
  owners = ["099720109477"] # Canonical

}

resource "aws_instance" "ubuntuvm" {
  ami           = data.aws_ami.ubuntu.id
  instance_type = "t2.micro"

  tags = {
    Name = "ubuntuvm"
  }
}

output "ubuntu_id" {
    value = "${data.aws_ami.ubuntu.id}"
}