# 3-Tier Network 
Explicit requirements:
The VPC should have an IPv4 CIDR block of 172.16.0.0/16 (translates to 65,356 IP addresses).
One (1) public subnet and two (2) private subnets spread out in one (1) availability zone. 
The public subnet's CIDR block is 172.0.1.0/24 and the private subnets' CIDR blocks are 172.0.2.0/24 and 172.0.3.0/24.
One (1) EC2 instance must be deployed in the public subnet.
One (1) EC2 instance must be deployed in the private subnet.
Ability to connect to our EC2 instance (the jump box) in the public subnet via SSH.
Ability to connect to our EC2 instance in the private subnet only from the jump box.
Ability to perform updates on our instances.
Keep costs free or as low as possible.

Implicit requirements:
There are also implied requirements that weren't explicitly mentioned:
In order to access our VPC from the internet to connect to our jump box instance we need an 
Internet Gateway attached to our VPC, a Route Table and Route Table Association that routes traffic 
between the Internet Gateway and the public subnet, and a public IP address assigned to our EC2 instance.
In order to perform updates from within the EC2 instance deployed in the private subnet, 
we need to create a Network Address Translation (NAT) Gateway that'll reside in the public subnet and assign an Elastic IP (EIP) to it.
We'll also need at least two (2) security groups assigned to our instance 
in the public subnet and private subnet. The former needs to allow SSH access from anywhere and the 
latter needs to allow SSH access from the former's Security Group. Both of the security groups in 
reference also need to allow outbound HTTP traffic on port 80 so we can perform updates.
 Note that a common characteristic of Security Groups is that they are stateful, 
 meaning that a response to an outbound request will be allowed to enter as inbound traffic only if the request was initiated from within the Security Group in reference.
To keep it in the free tier, our EC2 instance types will be t2.micro.