# network configurations:
#############################
variable "network_name" {
  description = "Name of the network"
  default     = "kubernetes-network"
}

variable "network_mode" {
  description = "Mode of the network" #none / nat / route / open / bridge
  default     = "nat"
}

variable "network_domain" {
  description = "Domain name"
  default     = "k8s.local"
}

variable "network_addr" {
  description = "Address"
  default     = ["10.17.3.0/24"]
}

# pool configuration:
#############################
variable "pool_name" {
  description = "name of the pool cluster"
  default     = "kubernetes-pool"
}

variable "pool_type" {
  description = "type of the pool cluster" # dir is the only one supported according to doc.
  default     = "dir"
}

# volume configuration:
#############################

# variable "volume_img" {
#   description = "Link of the ubuntu server image"
#   default     = "https://cloud-images.ubuntu.com/releases/bionic/release/ubuntu-18.04-server-cloudimg-arm64.img"
# }

variable "volume_format" {
  description = "Formatting volumes on base of qcow2"
  default     = "qcow2"
}

variable "volume_size" {
  description = "Volumes size 10 GB"
  default     = 10737418240
}

# cloud-init configuration:
#############################

variable "cloud-init_name" {
  description = "Name of the cloud init"
  default     = "cloudinit.iso"
}

variable "cloud-init_filename" {
  description = "Name of the cloud init configuration file"
  default     = "cloud_init.cfg"
}

variable "cloud-init_network" {
  description = "Name of the network configuration file"
  default     = "network_config.cfg"
}

variable "cloud-init_SSH_path" {
  description = "Path to the ssh pub"
  default     = "~/.ssh/id_rsa.pub"
}

variable "cloud-init_passwd" {
  description = "Password for the root user inside the VMs"
  default     = "$6$oqI46BYeXUV2OGK5$Dv3Ujy3EvazrNmiUusPF808yg/VQb3K2ueOKpSo.z8NZZGmGH1CquoYqzC0xKiYmtb94Gf81P6CrlGyRygYCb0"
  # default = "password"
}

# domain configuration:
#############################

variable "domain_names" {
  description = "Names of the VMs"
  # default     = ["kubemaster", "kubeworker1", "kubeworker2"]
  default = ["kubemaster"]
}

variable "domain_memory" {
  description = "Memory RAM for the VMs"
  default     = 2048
}

variable "domain_vcpu" {
  description = "Virtual CPUs for the VMs"
  default     = 2
}
variable "domain_iso_boot_dev" {
  description = "Name of the ubuntu iso file"
  default     = "ubuntu-22.04.2-live-server-amd64.iso"
}

