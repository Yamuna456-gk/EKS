
terraform {
  backend "s3" {
    bucket         = "my-terraform-state-dev"
    key            = "dev/terraform.tfstate"
    region         = "ap-southeast-2"
    encrypt        = true
    dynamodb_table = "terraform-lock-dev"
  }
}

