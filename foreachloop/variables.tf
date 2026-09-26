variable "ami_id" {
    default = "ami-0220d79f3f480ecf5"
}

variable "instance_type" {
    default = "t2.micro"
}

variable "ec2_tags" {
    default = {
        Name = "Roboshop"
    }
}

variable "sg_name" {
    default = "allow_all"
}

variable "sg_description" {
    default = "Allow all traffic from all ip addresses"
}

variable "sg_tags" {
    default = {
        Name = "allow_all2"
    }
}

variable "cidr_blocks" {
    default = ["0.0.0.0/0"]
}

variable "instances" {
    default = [ "mongodb", "redis", "mysql" ]
}

variable "zone_id" {
    default = "Z05111502D8K1UO9E4VW9"
}

variable "domain_name" {
    default = "sivarobots.shop"
}