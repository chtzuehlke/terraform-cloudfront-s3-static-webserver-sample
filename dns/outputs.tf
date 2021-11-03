output "domain_name" {
  value = var.domain_name
}

output "name_servers" {
  value = aws_route53_zone.this.name_servers
}

output "zone_id" {
  value = aws_route53_zone.this.id
}

#output "name_servers" {
#  value = data.aws_route53_zone.existing.name_servers
#}

#output "zone_id" {
#  value = data.aws_route53_zone.existing.id
#}
