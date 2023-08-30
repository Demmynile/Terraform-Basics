# variables.tf
variable "access_key" {
  description = "Access key to AWS console"
}
variable "secret_key" {
  description = "Secret key to AWS console"
}
variable "region" {
  default = "us-east-1"
}
variable "availabilityZone" {
  default = "us-east-1a"
}
variable "instanceType" {
  default = "t2.micro"
}
variable "amis" {
  default = {
    "us-east-1" = "ami-051f7e7f6c2f40dc1"
  }
}
