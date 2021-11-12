resource "aws_security_group" "general_sg" {
  description = "HTTP egress to anywhere"
  vpc_id      = aws_vpc.myvpc.id

  tags = {
    Project = "blackcloudgeeks"
  }
}

resource "aws_security_group" "bastion_sg" {
  description = "SSH ingress to Bastion and SSH egress to App"
  vpc_id      = aws_vpc.myvpc.id

  tags = {
    Project = "blackcloudgeeks"
  }
}

resource "aws_security_group" "app_sg" {
  description = "SSH ingress from Bastion and all TCP traffic ingress from ALB Security Group"
  tags = {
    Project = "blackcloudgeeks"
  }
}

