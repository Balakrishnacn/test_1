provider "aws" {
  region = "us-east-1"  # Change to your preferred region
}

resource "aws_s3_bucket" "my_bucket" {
  bucket = "my-unique-bucket-name-12345"  # Bucket name must be globally unique
  acl    = "private"

  tags = {
    Name        = "MyBucket"
    Environment = "Dev"
  }
}