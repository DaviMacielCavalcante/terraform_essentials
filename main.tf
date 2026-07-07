provider "aws" {
  region  = "us-east-1"
}

provider "aws" {
  alias = "west-2"
  region = "us-west-2"
}

terraform {
  backend "s3" {
    # Lembre de trocar o bucket para o seu, não pode ser o mesmo nome
    bucket = "terraform-essentials-linuxtips-davi"
    key    = "terraform-test.tfstate"
    region = "us-east-1"
  }
}
