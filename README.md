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
    }


## License

MIT - see the included LICENSE file for more details.
