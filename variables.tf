variable "default-vpc" {
  type = string
  default = "vpc-02ffed666286ed0c5"
}
variable "cidr-private-subnet-az1" {
  type = string
  default = "172.31.100.0/24"
}
variable "cidr-private-subnet-az2" {
  type = string
  default = "172.31.120.0/24"
}
variable "default-az-1" {
    type = string
    default = "us-east-1a"
}
variable "default-az-2" {
  type = string
  default = "us-east-1b"
}
variable "default-amazon-linux-x8664-image" {
    type = string
    default = "ami-026b57f3c383c2eec"
}