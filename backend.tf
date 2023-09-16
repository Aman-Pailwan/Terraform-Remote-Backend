terraform {
  backend "s3" {
    bucket = "remote-backend-bucket-terraform"
    key = "state-logs"
    region = "us-east-1"
  }
}