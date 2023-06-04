resource "libvirt_network" "kube_net" {
  name      = var.network_name
  mode      = var.network_mode
  domain    = var.network_domain
  addresses = var.network_addr
  dhcp {
    enabled = true
  }
  dns {
    enabled = true
  }
}
