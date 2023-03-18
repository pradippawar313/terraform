variable "ami_id" {
  type = string
}

variable "ec2_type" {
  type = string
  default = "t2.micro"
}

variable "ec2_pem" {
  type = string
}

variable "ec2_sg_id" {
  type = string
}