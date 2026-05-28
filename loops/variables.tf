variable "ami_id" {
  default = "ami-0220d79f3f480ecf5"
}

variable "instance_type" {
  default = "t3.micro"
}

variable "ec2_tags" {
  default= {
    Name = "Helloworld"
  }
}

variable "sg_name" {
  default = "allow_all"
}

variable "sg_description" {
  default = "Allow all traffic from all  ip addresses"
}

variable "from_port" {
  default = 0
}

variable "to_port" {
  default = 0
}

variable "cidr_blocks" {
  default = ["0.0.0.0/0"]
}

variable "sg_tags" {
  default = {
    Name = "allow_all"
  }
}

variable "instances" {
  default = ["mongodb","redis","mysql","rabbitmq","shipping","cart","user"]
}

variable "domain_name" {
  default = "sivarobots.shop"
}

variable "zone_id" {
 default = "Z05111502D8K1UO9E4VW9"
}