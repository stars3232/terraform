resource "aws_instance" "helloworld" {
  ami           = "ami-0220d79f3f480ecf5"
  instance_type = "t2.micro"
  vpc_security_group_ids = [ aws_security_group.allow_all.id ]

  tags = {
    Name = "HelloWorld2"
  }
}


resource "aws_security_group" "allow_all" {
  name        = "allow_all"
  description = "Allow all traffic from all ip addresses"

  tags = {
    Name = "allow_all2"
  }

  ingress {
    description = "TLS from VPC"
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
    ipv6_cidr_blocks = ["::/0"]
  }
}