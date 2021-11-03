output "website_bucket" {
  value = aws_s3_bucket.www.id
}

output "website_url" {
  value = "http://www.${local.domain_name}/"
}
