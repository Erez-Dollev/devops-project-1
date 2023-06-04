output "machines_ip" {
  value = {
    for domain_name, domain_instance in libvirt_domain.kube_vm : var.domain_names[domain_name] => domain_instance.network_interface.0.addresses.0
  }
}
