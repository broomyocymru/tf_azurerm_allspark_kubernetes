# tf_azurerm_allspark_kubernetes
Terraform module to configure an AllSpark Kubernetes Cluster.

## Input variables
  * allspark [required] - n.b. this is a map of data generated from tf_azurerm_allspark_vpc
  * name [required]

## Outputs
  * allspark_data - map


## Example use

    module "allspark" {
      source  = "github.com/broomyocymru/tf_azurerm_allspark_kubernetes"
      allspark = "${module.allspark.allspark_data}"
      name = "k8dev"
      service_principal_id = "${var.azurerm_client_id}"
      service_principal_secret = "${var.azurerm_client_secret}"
      admin_username = "k8Admin"
    }


## License

MIT - see the included LICENSE file for more details.
