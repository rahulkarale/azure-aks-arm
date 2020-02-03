output "aks_dns" {
	value = "${azurerm_template_deployment.aks_cluster.outputs["aksDNS"]}"
	}
