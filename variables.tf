variable "allspark" {
  description = "Allspark network and storage details"
  type = "map"
}

variable "name" {
  description = "Name of the Kubernetes instance"
}


variable "service_principal_id" {
  description = "Kubernetes Service Principal ID"
}
variable "service_principal_secret" {
  description = "Kubernetes Service Principal Secret"
}

variable "admin_username" {
  description = "Kubernetes Admin User"
}

variable "master_count" {
  description = "Number of Kubernetes Master Nodes"
  default = "1"
}

variable "worker_count" {
  description = "Number of Kubernetes Worker Nodes"
  default = "3"
}
variable "worker_pool_name" {
  description = "Kubernetes Worker Pool Name"
  default = "${var.name}-pool"
}
variable "worker_dns" {
  description = "DNS for agents in pool"
  default = "k8.allspark.com"
}
variable "worker_vm" {
  description = "VM Size"
  default = "Standard_D2_v2"
}
