output "allspark_data" {
  value = {
    cluster_id = "${azurerm_container_service.k8.id}"
    cluster_master_address = "${azurerm_container_service.k8.master_profile.fqdn}"
    cluster_worker_address = "${azurerm_container_service.k8.agent_pool_profile.fqdn}"
  }
}
