variable project {
  description = "Project ID"
}
variable region {
  description = "Region"
  default     = "europe-west1"
}
variable public_key_path {
  description = "Path to the public key used for ssh access"
}
variable disk_image {
  description = "Disk image"
}

variable private_key_path {
  description = "Path to the private key used for provisions"
}

variable zone {
  type    = string
  default = "europe-west1-b"
}

variable port_app {
  description = "App port"
  default     = "9292"
}
variable quantity {
  type    = number
  default = 1
}

variable app_disk_image {
  description = "Disk image for reddit app"
  default     = "reddit-app-base"
}

variable db_disk_image {
  description = "Disk image for reddit db"
  default     = "reddit-db-base"
}

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
