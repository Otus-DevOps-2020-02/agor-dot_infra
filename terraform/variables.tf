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
