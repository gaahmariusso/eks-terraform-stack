data "aws_subnets" "private" {
  filter {
    name   = "tag:Project"
    values = ["eks-stack"]
  }

  filter {
    name   = "tag:Environment"
    values = ["production"]
  }

  filter {
    name   = "map-public-ip-on-launch"
    values = [false]
  }
}