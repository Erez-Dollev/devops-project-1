# resource "libvirt_volume" "base_vol" {
#   count  = length(var.domain_names)
#   name   = "${var.domain_names[count.index]}.${var.volume_format}"
#   pool   = "default"
#   source = var.volume_img
#   format = var.volume_format
# }

resource "libvirt_volume" "kube_vol" {
  count  = length(var.domain_names)
  name   = "${var.domain_names[count.index]}.${var.volume_format}"
  format = var.volume_format
  size   = var.volume_size
  pool   = libvirt_pool.kube_pool.name
}
