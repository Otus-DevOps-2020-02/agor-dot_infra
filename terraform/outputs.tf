output "app_externallb_ip" {
  value = google_compute_forwarding_rule.network-load-balancer.ip_address
}
