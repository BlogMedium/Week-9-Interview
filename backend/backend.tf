terraform {
  backend "s3" {
    bucket = "terraform-state-prod11"
    key    = "network/terraform.tfstate"
    region = "us-west-2"
    dynamodb_table = "cdit"
  }
}
