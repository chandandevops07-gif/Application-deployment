resource "azurerm_resource_group" "Rgs"{
    for_each = var.Rgs
    name = "each.value.name"
    location = "each.value.location"
}


resource "azurerm_storage_account" "mystorage" {
    for_each = "var.mystorage"
    name = "each.value.name"
    location = "each.value.location"
    resource_group_name = "each.value.group"
    account_tier ="each.value.tier"
    account_replication_type = "each.valu.replication"
}