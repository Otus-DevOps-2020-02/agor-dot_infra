resource "google_compute_firewall" "firewall_ssh" {
  name    = var.name
  network = var.network
  allow {
    protocol = "tcp"
    ports    = ["22"]
  }
  source_ranges = var.source_ranges
}
