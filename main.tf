terraform {
  required_providers {
    equinix = {
      source  = "equinix/equinix"
      version = "2.6.0"
    }
  }
}

provider "equinix" {
  client_id    = var.equinix_client_id
  client_secret = var.equinix_client_secret
}

# Create Network Edge Device in Metro 1
resource "equinix_network_device" "device1" {
  name                 = var.device1_name
  metro_code           = var.metro1
  type_code            = var.device_type
  self_managed         = true
  byol                 = true
  package_code         = "network-essentials"
  notifications        = [var.notifications]
  hostname             = var.device1_hostname
  account_number       = var.account_number
  version              = var.device_version
  core_count           = var.core_count
  term_length          = var.term_length
  additional_bandwidth = var.additional_bandwidth
  acl_template_id      = var.acl_template_id

  ssh_key {
    username = var.ssh_username
    key_name = var.ssh_key_name
  }
}

# Create Network Edge Device in Metro 2
resource "equinix_network_device" "device2" {
  name                 = var.device2_name
  metro_code           = var.metro2
  type_code            = var.device_type
  self_managed         = true
  byol                 = true
  package_code         = "network-essentials"
  notifications        = [var.notifications]
  hostname             = var.device2_hostname
  account_number       = var.account_number
  version              = var.device_version
  core_count           = var.core_count
  term_length          = var.term_length
  additional_bandwidth = var.additional_bandwidth
  acl_template_id      = var.acl_template_id

  ssh_key {
    username = var.ssh_username
    key_name = var.ssh_key_name
  }
}

# Create Device Link Group (DLG)
resource "equinix_network_device_link" "faizandlg" {
  name       = var.dlg_name
  project_id = var.project_id

  device {
    id           = equinix_network_device.device1.uuid
    interface_id = 4
  }

  device {
    id           = equinix_network_device.device2.uuid
    interface_id = 4
  }

  link {
    account_number  = var.account_number
    src_metro_code  = equinix_network_device.device1.metro_code
    dst_metro_code  = equinix_network_device.device2.metro_code
    throughput      = var.throughput
    throughput_unit = var.throughput_unit
  }
}