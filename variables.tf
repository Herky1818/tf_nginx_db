variable "vpc_cidr_block" {
  default = "10.0.0.0/16"
}
variable "public_subnet_cidr" {
  default = "10.0.1.0/24"
}
variable "private_subnet_cidr" {
  default = "10.0.2.0/24"
}
variable "ami_nginx" {
  default = "ami-0cf2b4e024cdb6960" #Replace with actual Nginx AMI ID
}
variable "ami_db" {
  default = "ami-0cf2b4e024cdb6960"  # Replace with actual DB AMI ID
}
variable "key_name" {
  default = "my-keypair"
}
