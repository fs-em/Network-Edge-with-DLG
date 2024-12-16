equinix_client_id  = "yATvbXGQlmyHjCeaV1fNmWNsrcoFaPwJ3bwLtwWn7RgvdKXa"
equinix_client_secret = "AYyXT0ObpkFtzz0FVLBQSItF0OQGcoVhoOtj80AGz0l7SmywDRERJRZC8FSQdwnP"
project_id = "89ef02a9-1773-41ec-a1c9-aa30e34493a6"

metro1             = "NY" # Metro for device 1
metro2             = "DC" # Metro for device 2

device_type        = "C8000V" # Device type

device1_name       = "faizanlabNY" # Device 1 name
device2_name       = "faizanlabDC" # Device 2 name

device1_hostname   = "faizanNY"    # Device 1 hostname
device2_hostname   = "faizanDC"  # Device 2 hostname

ssh_username       = "faizan"      # SSH username
ssh_key_name       = "faizanpublickey" # SSH key name

notifications      = "fsaleem@equinix.com" # Notification email
account_number     = "0018000000S1BpZAAV" # Account number for the devices

device_version     = "17.09.04a" # Device version
core_count         = 2           # Core count
term_length        = 1           # Term length (in months)
additional_bandwidth = 5         # Additional bandwidth for the devices

acl_template_id    = "88376c4d-e147-406d-9b2f-43d93137d322" # ACL template ID

dlg_name           = "test-link" # Device Link Group (DLG) name
throughput         = "50"        # Throughput for the DLG
throughput_unit    = "Mbps"      # Throughput unit