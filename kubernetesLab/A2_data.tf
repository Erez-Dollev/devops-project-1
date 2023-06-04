data "template_file" "user_data" {
  template = file("${path.module}/${var.cloud-init_filename}")
  vars = {
    SSH    = file("${var.cloud-init_SSH_path}")
    PASSWD = var.cloud-init_passwd
  }
}

data "template_file" "network_data" {
  template = file("${path.module}/${var.cloud-init_network}")
}
