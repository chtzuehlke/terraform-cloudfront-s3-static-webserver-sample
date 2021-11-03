#!/bin/bash

STATE_BUCKET=tfstate$(uuidgen | tr -d '-' | tr '[:upper:]' '[:lower:]')

aws s3api create-bucket --acl private --bucket $STATE_BUCKET --create-bucket-configuration LocationConstraint=$AWS_DEFAULT_REGION
aws s3api put-bucket-versioning --bucket $STATE_BUCKET --versioning-configuration MFADelete=Disabled,Status=Enabled

cat >aws.tf.template <<EOL
provider "aws" {
  region  = "$AWS_DEFAULT_REGION"
}

terraform {
  backend "s3" {
    bucket = "$STATE_BUCKET"
    key    = FIXME
    region = "$AWS_DEFAULT_REGION"
  }
}
EOL

#DEBUG: aws s3api delete-bucket --bucket $STATE_BUCKET
