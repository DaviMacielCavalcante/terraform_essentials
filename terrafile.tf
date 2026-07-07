module "servers" {
  source = "./servers"
  servers = 2

  providers = {
    aws = aws
    aws.west-2 = aws.west-2
  }

}