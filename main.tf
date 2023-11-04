resource "aws_instance" "my-instance" {
  ami           = var.ami
  instance_type = var.instancetype

  tags = {
    Name = var.instance_name
  }
}

resource "aws_s3_bucket" "bucket1" {
  bucket = "my-bucket-raj-108"
}

resource "aws_dynamodb_table" "terraform-state-lock" {
  name         = "terraform-state-lock-dynamo"
  hash_key     = "LockID"
  billing_mode = "PAY_PER_REQUEST"

  attribute {
    name = "LockID"
    type = "S"
  }
}