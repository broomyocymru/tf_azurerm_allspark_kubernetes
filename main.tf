resource "azurerm_container_service" "k8" {
  name                   = "${var.name}"
  location               = "West Europe"
  resource_group_name    = "${var.allspark["resource_group_name"]}"
  orchestration_platform = "Kubernetes"

  master_profile {
    count      = "${var.master_count}"
    dns_prefix = "${var.name}-master"
  }

  linux_profile {
    admin_username = "${var.admin_username}"

    ssh_key {
      key_data = "${var.allspark["ssh_public"]}"
    }
  }

  agent_pool_profile {
    name       = "${var.worker_pool_name}"
    count      = "${var.worker_count}"
    dns_prefix = "${var.name}-worker"
    fqdn       = "${var.worker_dns}"
    vm_size    = "${var.worker_vm}"
  }

  service_principal {
    client_id     = "${var.service_principal_id}"
    client_secret = "${var.service_principal_secret}"
  }

  diagnostics_profile {
    enabled = false
  }
}
