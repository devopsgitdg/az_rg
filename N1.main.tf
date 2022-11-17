
 # check if the the nameing convention exists
 # if not create go forward and create
 # if the name does not exists then pull the whole string up to the last two or one character
  

resource "azurerm_resource_group" "rg-wkspc" {
  count = 1
   provisioner "local-exec" {
    command = "az group list --query \"{ResourceGroup: '${local.naming_convention.name}'}\""
   
  }
  # test for alan
  name     = (var.name == "local.naming_convention.name") ? local.naming_convention.name : "${local.naming_convention.name}${format("-%03d", count.index + 1)}" 
  location = var.resource_group_location
  
}

 