variable "ami" {
  type    = string
  default = "ami-01bc990364452ab3e"
}

variable "instancetype" {
  type    = string
  default = "t2.micro"
}

variable "instance_name" {
  default = "my-in"
}
