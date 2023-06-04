resource "libvirt_pool" "kube_pool" {
  name = var.pool_name
  type = var.pool_type
  path = "${path.cwd}/${var.pool_name}"
}
