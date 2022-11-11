
 # check if the the nameing convention exists
 # if not create go forward and create
 # if the name does not exists then pull the whole string up to the last two or one character
  

resource "azurerm_resource_group" "rg-wkspc" {
  
   provisioner "local-exec" {
    command = "az group list --query \"{ResourceGroup: '${local.naming_convention.name}'}\""
   
  }
  
  name     = (var.name == "local.naming_convention.name") ? local.naming_convention.name : trimprefix(format("%0s%03d", local.naming_convention.name, 1), local.naming_convention.name)
  location = var.resource_group_location

  
}

 