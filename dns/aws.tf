provider "aws" {
  region = "eu-central-1"
}

terraform {
  backend "s3" {
    bucket = "tfstateb2ee8bb13b3948ae8206126aee47cacc"
    key    = "dns"
    region = "eu-central-1"
  }
}
