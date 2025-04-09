resource "azurerm_kubernetes_cluster" "my-aks" {
  name                = var.aks_name
  location            = var.rg_location
  resource_group_name = var.rg_name
  dns_prefix = var.dns_aks
  
  default_node_pool {
    name       = var.name_nodepool
    node_count = 1
    vm_size    = var.vm_size
  }

  identity {
    type = "SystemAssigned"
  }

  tags = {
    Environment = "Production"
  }
}

#output "client_certificate" {
#  value     = azurerm_kubernetes_cluster.example.kube_config[0].client_certificate
#  sensitive = true
#}

#output "kube_config" {
#  value = azurerm_kubernetes_cluster.example.kube_config_raw

#  sensitive = true
#}
