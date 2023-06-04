resource "libvirt_domain" "kube_vm" {
  count     = length(var.domain_names)
  name      = var.domain_names[count.index]
  memory    = var.domain_memory
  vcpu      = var.domain_vcpu
  autostart = true

  boot_device {
    dev = ["hd", "cdrom"]
  }

  # disk {
  #   volume_id = libvirt_volume.base_vol.id
  # }

  disk {
    file = "${path.cwd}/${var.domain_iso_boot_dev}"
  }

  disk {
    volume_id = libvirt_volume.kube_vol[count.index].id
  }

  cloudinit = libvirt_cloudinit_disk.kube_init.id

  network_interface {
    network_id     = libvirt_network.kube_net.id
    hostname       = libvirt_network.kube_net.name
    wait_for_lease = true
  }

  graphics {
    type        = "spice"
    listen_type = "address"
    autoport    = true
  }

  console {
    type        = "pty"
    target_type = "serial"
    target_port = "0"
  }

  console {
    type        = "pty"
    target_type = "virtio"
    target_port = "1"
  }
}
