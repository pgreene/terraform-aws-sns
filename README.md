# terraform-aws-sns
Terraform Module for AWS SNS

## Usage Example

`main.tf #contents`

```bash
locals {
  vpc_id = data.aws_vpc.vpc.id
  region = "eu-west-1"
}

module "aws_sns" {
  source = "git::https://github.com/Voyanta/terraform-aws-sns"
  submodule = "sns"
  vpc_id = local.vpc_id
}
```

`data.tf #contents`

```bash
data "aws_vpc" "vpc" {
  filter {
    name   = "tag:Name"
    values = ["your-vpc-tag"]
  }

  filter {
    name   = "state"
    values = ["available"]
  }
}

data "aws_subnet_ids" "private_subnets" {
  vpc_id = data.aws_vpc.vpc.id

  filter {
    name   = "tag:Name"
    values = ["Private Subnet (AZ1)","Private Subnet (AZ2)"]
  }
}
```
