module "vpc" {
  source = "terraform-aws-modules/vpc/aws"

  name = "vertica-vpc"
  cidr = "172.30.0.0/16"

  # azs             = ["${var.AWS_REGION}a", "${var.AWS_REGION}b", "${var.AWS_REGION}c"]
  # private_subnets = ["172.30.1.0/24", "172.30.2.0/24", "172.30.3.0/24"]
  # public_subnets  = ["172.30.101.0/24", "172.30.102.0/24", "172.30.103.0/24"]

  azs             = ["${var.AWS_REGION}a"]
  private_subnets = ["172.30.1.0/24"]
  public_subnets  = ["172.30.101.0/24"]

  enable_nat_gateway = true

  tags = {
    Terraform   = "true"
    Environment = "dev"
    Platform    = "vertica"
  }
}
