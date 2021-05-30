resource "aws_key_pair" "default" {
  key_name = "terraform_key"
  public_key = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQDM/9YtaZKVkUlcz+grHP3VmNcp009XCG0kL3t2OFDXgxLPo4rdCzNTdqD3IaxC8Wq42R4vjLwnSYdL+aSxkuA0SLkwNwe4f8PTk7xh/+Lwy1mEjYGpuTCTP4nnS8xYKoBmH0SdpzgAwZDst76TNjGANQEvHji12Ax9Pz/I9HtUd4ki+U5zr7Cn3fyht1BIYEkCDMJY32LrrJxbq2vQVnAQHZ/E8r9cFSq4V/ruUSG2rfnSHEd/ylic/xIuUwlDqXNQ9ZrQDkV98AO217YJxLJfNWGgEmA7p4neYnOECbkmGOtIKVascn94OqfBaQiAM5Ac3d4u2heBAr6gaNqG/6pr ec2-user@ip-172-31-29-186.ap-southeast-1.compute.internal"
}


resource "aws_instance" "demo" {
  count                   = 2
  ami                     = var.ami
  instance_type           = var.type
  associate_public_ip_address = true
 security_groups =  [ "${aws_security_group.firewallweb.name}" ]
  root_block_device {
        volume_size = "30"
        volume_type = "gp3"
        delete_on_termination = true
  }

  tags = {
    name = "Demo VM ${count.index}"
  }
}