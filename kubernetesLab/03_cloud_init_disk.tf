resource "libvirt_cloudinit_disk" "kube_init" {
  name           = var.cloud-init_name
  user_data      = data.template_file.user_data.rendered
  network_config = data.template_file.network_data.rendered
}
