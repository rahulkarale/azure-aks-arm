```
module "akscluster" {
    source = "git::ssh://git@code.siemens.com/mindsphere-azure/infrastructure_az/terraform_modules/aks-cluster.git?ref=arm"

    // Parameters
    aks_name = "${var.aks_name}"
    dns_prefix = "${var.parent_dns_zone_name}"
    resource_group_name = "${module.resource_group.name}"
    location = "${var.location}"
    client_id       = "${var.client_id}"
    client_secret   = "${var.client_secret}"
    subscription_id = "${var.subscription_id}"
    agentCount      = "${var.agentCount}"
    accountName             = "${var.account_name}"
    environment             = "${var.environment}"
    team                    = "${var.team}"

}
```