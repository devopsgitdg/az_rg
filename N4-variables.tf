variable "subs" {
  description = "Business Division in the large organization this Infrastructure belongs"
  type = list(string)
  default =  ["entprod", "da"]
}

variable "resource_type" {
  description = "resource group, postgres, Key vault, Azure_kubernetes, Azure_sqldb, Azure_cosmos, Constainer Registry, Databricks Storage Account"
  type = list(string)
  default =  ["rg", "psql", "kv", "aks","sqldb", "cosmos", "cr", "dbw", "stg"]
}

variable "account_domain_identifier"{
    description = "The account domain identifier "
    type = list(string)
    default =  ["mat", "oms", "db", "da"]

}
# Azure Resources Location
variable "resource_group_location" {
  description = "Region in which Azure Resources to be created"
  type = string
  default = "eastus2"  
}

variable "name_counts" {
  type    = map(number)
  default = {
    "poc" = 099
 
  }
}

variable "last_number" {

  default = 099
}

variable "name" {
  default = ""
}