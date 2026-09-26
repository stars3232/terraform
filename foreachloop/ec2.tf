resource "aws_instance" "helloworld" {
  for_each        = toset(var.instances)
  ami           = var.ami_id
  instance_type = var.instance_type
  vpc_security_group_ids = [ aws_security_group.allow_all.id ]

  tags = {
    Name = each.key
  }
}


resource "aws_security_group" "allow_all" {
  name        = var.sg_name
  description = var.sg_description

  tags = var.sg_tags

  ingress {
    description = "TLS from VPC"
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = var.cidr_blocks
  }

  egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = var.cidr_blocks
    ipv6_cidr_blocks = ["::/0"]
  }
}