
output "aggregate_ran" {
  
  value = "${format("%03d", tonumber(local.split_string.id[3]))}"

}

 output "naming_convention" {
  value = local.naming_convention.name

}