# Define Local Values in Terraform




locals {
   env_designation = {
             for name, count in var.name_counts : name => [
             for i in range(count + 1) : trimprefix(format("%s%03d",name, i), name)
             ]
  }

  ran = range(001,100,1)

  naming_convention = {

   
        resource = var.resource_type
        subscription = var.subs
        account = var.account_domain_identifier
        name = "${var.resource_type[0]}-${var.subs[0]}-${var.account_domain_identifier[0]}"
        
  }

  split_string = {
   count = length(local.ran)
   id = "${split("-", local.naming_convention.name)}"
    
  }

  
 
} 


 



