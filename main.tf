provider "aws" {
  region = "us-east-1"
}


resource "aws_instance" "instance" {
  ami = var.ami_id
  subnet_id = var.subnet_id
  instance_type = var.instance_size
  key_name = var.key_name
}

resource "aws_s3_bucket" "s3Bucket" {
  bucket = "remote-backend-bucket-terraform"
}