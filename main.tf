provider "aws" {
  region  = "us-west-2"
}

terraform {
  backend "s3" {
    # Lembre de trocar o bucket para o seu, não pode ser o mesmo nome
    bucket = "luan-lambda-terraform-s3"
    key    = "terraform-test.tfstate"
    region = "us-west-2"
  }
}
