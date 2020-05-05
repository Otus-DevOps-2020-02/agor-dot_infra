#output "app_externallb_ip" {
# value = google_compute_forwarding_rule.network-load-balancer.ip_address
#}

output "app_external_ip" {
  value = module.app.app_external_ip
}

output "db_external_ip" {
  value = module.db.db_external_ip
}

output "db_internal_ip" {
  value = module.db.db_internal_ip
}
