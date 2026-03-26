variable "instance_type" {
  type        = string
  default     = "t3.micro"
}

variable "ami_id" {
  type        = string
  default     = "ami-0220d79f3f480ecf5"
}

variable "tags_Name" {
    type    = map(string)
    default = {
    Name = "HelloWorld"
  }
}

variable "sg_name" {
  type        = string
  default     = "allow_all"
}

variable "sg_description" {
  type        = string
  default     = "Allow all traffic from all ip addresses"
}

variable "sg_from_port" {
  type        = number
  default     = 0
}

variable "sg_to_port" {
  type        = number
  default     = 0
}

variable "cidr_blocks" {
  type        = list(string)
  default     = ["0.0.0.0/0"]
}

variable "sg_tags_Name" {
    type    = map(string)
    default = {
    Name = "allow-all"
  }
}

variable "instance_Name" {
  type        = list(string)
  default     = ["mongodb","mysql","redis","rabbitmq"]
}

variable "zone_id"  {
  default     = "Z040121124STJX2YG3HWG"
}

variable "domain_name"  {
  default     = "sivarobos.shop"
}