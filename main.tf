variable "aws_region" {
  default = "us-east-1"
}

variable "access_key" {
  default = "AKIAQQ4UKHAXU5KZTFUS"
}

variable "secret_key" {
  default = "mW0c6VqD1hY9FI/HbH74bL6VdUYdGTClvl/f5xDD"
}


provider "aws" {
  region = var.aws_region
  access_key = var.access_key
  secret_key = var.secret_key
}


resource "aws_vpc" "ecs_vpc" {
  cidr_block = "10.32.0.0/16"
}
