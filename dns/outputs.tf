output "name_servers" {
  value = aws_route53_zone.this.name_servers
}

output "domain_name" {
  value = var.domain_name
}

output "zone_id" {
  value = aws_route53_zone.this.id
}
