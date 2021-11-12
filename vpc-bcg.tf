provider "aws" {
  region = "us-east-2"
}

resource "aws_vpc" "myvpc" {
  cidr_block       = "172.16.0.0/16"
  instance_tenancy = "default"

  tags = {
    Project = "blackcloudgeeks"
  }
}

resource "aws_eip" "nat_eip" {
  vpc = true

  tags = {
    Project = "blackcloudgeeks"
  }
}


