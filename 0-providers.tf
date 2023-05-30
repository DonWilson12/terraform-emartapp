terraform {
  required_version = ">=0.14"
}

provider "aws" {
  region = var.aws_region
}

provider "helm" {
  kubernetes {
    host                   = aws_eks_cluster.dwo-eks-cluster.endpoint
    cluster_ca_certificate = base64decode(aws_eks_cluster.dwo-eks-cluster.certificate_authority[0].data)
    exec {
      api_version = "client.authentication.k8s.io/v1beta1"
      args        = ["eks", "get-token", "--cluster-name", aws_eks_cluster.dwo-eks-cluster.id]
      command     = "aws"
    }
  }
}

