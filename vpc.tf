module "vpc" {
  source = "terraform-aws-modules/vpc/aws"

  name = "vertica-vpc"
  cidr = "172.30.0.0/16"

  azs             = ["${var.aws_region}a"]
  private_subnets = ["172.30.1.0/24"]
  public_subnets  = ["172.30.101.0/24"]

  enable_nat_gateway = true

  tags = {
    Terraform   = "true"
    Environment = "dev"
    Platform    = "vertica"
  }
}
