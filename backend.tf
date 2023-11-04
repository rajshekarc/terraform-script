terraform {
  backend "s3" {
    bucket         = "my-bucket-raj-108"
    region         = "us-east-1"
    key            = "raj/terraform.tfstate"
    dynamodb_table = "terraform-state-lock"
  }
}