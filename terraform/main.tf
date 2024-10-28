# main.tf

terraform {
  backend "s3" {
    bucket         = "sctp-ce7-tfstate"  # Your backend bucket name
    key            = "dijay-simple-s3-bucket-281024.tfstate"
    region         = "us-east-1"                     # Your preferred region
  }
}

provider "aws" {
  region = "us-east-1"  # Your preferred region
}

resource "aws_s3_bucket" "my_bucket" {
  bucket = "dijay-simple-s3-bucket-281024"  # Ensure this is a valid and unique bucket name

  tags = {
    Name        = "MyBucket"
    Environment = "Dev"
  }
}
