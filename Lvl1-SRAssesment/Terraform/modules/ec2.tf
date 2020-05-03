provider "aws" {
  region = "us-east-1"
}

resource "aws_instance" "yesh" {
  ami           = var.ami
  instance_type = var.instance_type
  vpc_security_group_ids = var.sg_id
  key_name = "yeshmac"
  iam_instance_profile = "s3-access"
  subnet_id = "subnet-0ca91a5c302d6354a"
  user_data     = "file(var.user_data_path)"

  tags = {
    Name = "Assesment_ec2"
  }
}


variable "user_data_path" {

}

variable "ami" {

}

variable "instance_type" {

}

variable "sg_id" {
  type    = list(string)
}