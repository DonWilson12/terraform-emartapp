resource "aws_subnet" "public-ap-northeast-1c" {
  vpc_id                  = aws_vpc.main.id
  cidr_block              = "10.0.1.0/24"
  availability_zone       = var.AZ1
  map_public_ip_on_launch = true
  tags = {
    "Name"                                      = "public-ap-northeast-1c"
    "kubernetes.io/role/elb"                    = "1"
    "kubernetes.io/cluster/${var.cluster_name}" = "shared"
  }
}

resource "aws_subnet" "public-ap-northeast-1d" {
  vpc_id                  = aws_vpc.main.id
  cidr_block              = "10.0.2.0/24"
  availability_zone       = var.AZ2
  map_public_ip_on_launch = true
  tags = {
    "Name"                                      = "public-ap-northeast-1d"
    "kubernetes.io/role/elb"                    = "1"
    "kubernetes.io/cluster/${var.cluster_name}" = "shared"
  }
}

resource "aws_subnet" "private-ap-northeast-1c" {
  vpc_id            = aws_vpc.main.id
  cidr_block        = "10.0.3.0/24"
  availability_zone = var.AZ1
  tags = {
    "Name"                                      = "private-ap-northeast-1c"
    "kubernetes.io/role/internal-elb"           = "1"
    "kubernetes.io/cluster/${var.cluster_name}" = "shared"
  }
}

resource "aws_subnet" "private-ap-northeast-1d" {
  vpc_id            = aws_vpc.main.id
  cidr_block        = "10.0.4.0/24"
  availability_zone = var.AZ2
  tags = {
    "Name"                                      = "private-ap-northeast-1d"
    "kubernetes.io/role/internal-elb"           = "1"
    "kubernetes.io/cluster/${var.cluster_name}" = "shared"
  }
}

# The map_public_ip_on_launch argument is if you plan to deploy nodes to a public subnet, the subnet must auto-assign IPv4 public addresses.
# If you want to deploy load balancers to a subnet, the subnet must have the following tags.
# https://docs.aws.amazon.com/eks/latest/userguide/network_reqs.html

# 2 public and private subnets. AWS recommendation for most deployments
# https://docs.aws.amazon.com/eks/latest/userguide/creating-a-vpc.html

