provider "aws" {
  region = "eu-central-1"
}

provider "aws" {
  alias  = "east1"
  region = "us-east-1"
}

terraform {
  backend "s3" {
    bucket = "tfstateb2ee8bb13b3948ae8206126aee47cacc"
    key    = "blog"
    region = "eu-central-1"
  }
}

data "terraform_remote_state" "dns" {
  backend = "s3"
  config = {
    bucket = "tfstateb2ee8bb13b3948ae8206126aee47cacc"
    key    = "dns"
    region = "eu-central-1"
  }
}
