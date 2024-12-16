variable "equinix_client_id" {
  type        = string
  description = "Equinix client ID"
  sensitive   = true
}

variable "equinix_client_secret" {
  type        = string
  description = "Equinix client secret"
  sensitive   = true
}

variable "project_id" {
  type        = string
  description = "Project ID for Equinix resources"
}

variable "metro1" {
  type        = string
  description = "Metro code for device 1"
  default     = "DA"
}

variable "metro2" {
  type        = string
  description = "Metro code for device 2"
  default     = "DC"
}

variable "device_type" {
  type        = string
  description = "Device type code (e.g., C8000V)"
  default     = "C8000V"
}

variable "device1_name" {
  type        = string
  description = "Name for device 1"
  default     = "device1"
}

variable "device2_name" {
  type        = string
  description = "Name for device 2"
  default     = "device2"
}

variable "device1_hostname" {
  type        = string
  description = "Hostname for device 1"
  default     = "hostname1"
}

variable "device2_hostname" {
  type        = string
  description = "Hostname for device 2"
  default     = "hostname2"
}

variable "ssh_username" {
  type        = string
  description = "SSH username"
  default     = "admin"
}

variable "ssh_key_name" {
  type        = string
  description = "SSH key name"
}

variable "notifications" {
  type        = string
  description = "Email for notifications"
}

variable "account_number" {
  type        = string
  description = "Account number for devices"
}

variable "device_version" {
  type        = string
  description = "Device version"
  default     = "17.09.04a"
}

variable "core_count" {
  type        = number
  description = "Core count for devices"
  default     = 2
}

variable "term_length" {
  type        = number
  description = "Term length for devices"
  default     = 1
}

variable "additional_bandwidth" {
  type        = number
  description = "Additional bandwidth for devices"
  default     = 5
}

variable "acl_template_id" {
  type        = string
  description = "ACL template ID"
}

variable "dlg_name" {
  type        = string
  description = "Name for the Device Link Group"
}

variable "throughput" {
  type        = string
  description = "Throughput for the DLG"
  default     = "50"
}

variable "throughput_unit" {
  type        = string
  description = "Throughput unit for the DLG"
  default     = "Mbps"
}