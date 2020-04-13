variable "network" {
  description = "Default network"
  default     = "default"
}

variable "name" {
  description = "Name of the rule"
  default     = "default-allow-ssh"
}

variable source_ranges {
  description = "Allowed IP addresses"
  default     = ["0.0.0.0/0"]
}
