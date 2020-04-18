provider "aws" {
  region = "us-west-1"
  access_key = var.Access_Key_ID
  secret_key = var.Secret_Access_key
}

resource "aws_vpc" "main" {
  cidr_block = "10.0.0.0/16"
}

resource "aws_sns_topic" "user_updates" {
  name = "user-updates-topic"
}
