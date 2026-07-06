output "frontdoors" {
  description = "All frontdoor resources"
  value       = azurerm_frontdoor.frontdoors
}
output "frontdoors_backend_pool" {
  description = "List of backend_pool values across all frontdoors"
  value       = [for k, v in azurerm_frontdoor.frontdoors : v.backend_pool]
}
output "frontdoors_backend_pool_health_probe" {
  description = "List of backend_pool_health_probe values across all frontdoors"
  value       = [for k, v in azurerm_frontdoor.frontdoors : v.backend_pool_health_probe]
}
output "frontdoors_backend_pool_health_probes" {
  description = "List of backend_pool_health_probes values across all frontdoors"
  value       = [for k, v in azurerm_frontdoor.frontdoors : v.backend_pool_health_probes]
}
output "frontdoors_backend_pool_load_balancing" {
  description = "List of backend_pool_load_balancing values across all frontdoors"
  value       = [for k, v in azurerm_frontdoor.frontdoors : v.backend_pool_load_balancing]
}
output "frontdoors_backend_pool_load_balancing_settings" {
  description = "List of backend_pool_load_balancing_settings values across all frontdoors"
  value       = [for k, v in azurerm_frontdoor.frontdoors : v.backend_pool_load_balancing_settings]
}
output "frontdoors_backend_pool_settings" {
  description = "List of backend_pool_settings values across all frontdoors"
  value       = [for k, v in azurerm_frontdoor.frontdoors : v.backend_pool_settings]
}
output "frontdoors_backend_pools" {
  description = "List of backend_pools values across all frontdoors"
  value       = [for k, v in azurerm_frontdoor.frontdoors : v.backend_pools]
}
output "frontdoors_cname" {
  description = "List of cname values across all frontdoors"
  value       = [for k, v in azurerm_frontdoor.frontdoors : v.cname]
}
output "frontdoors_explicit_resource_order" {
  description = "List of explicit_resource_order values across all frontdoors"
  value       = [for k, v in azurerm_frontdoor.frontdoors : v.explicit_resource_order]
}
output "frontdoors_friendly_name" {
  description = "List of friendly_name values across all frontdoors"
  value       = [for k, v in azurerm_frontdoor.frontdoors : v.friendly_name]
}
output "frontdoors_frontend_endpoint" {
  description = "List of frontend_endpoint values across all frontdoors"
  value       = [for k, v in azurerm_frontdoor.frontdoors : v.frontend_endpoint]
}
output "frontdoors_frontend_endpoints" {
  description = "List of frontend_endpoints values across all frontdoors"
  value       = [for k, v in azurerm_frontdoor.frontdoors : v.frontend_endpoints]
}
output "frontdoors_header_frontdoor_id" {
  description = "List of header_frontdoor_id values across all frontdoors"
  value       = [for k, v in azurerm_frontdoor.frontdoors : v.header_frontdoor_id]
}
output "frontdoors_load_balancer_enabled" {
  description = "List of load_balancer_enabled values across all frontdoors"
  value       = [for k, v in azurerm_frontdoor.frontdoors : v.load_balancer_enabled]
}
output "frontdoors_name" {
  description = "List of name values across all frontdoors"
  value       = [for k, v in azurerm_frontdoor.frontdoors : v.name]
}
output "frontdoors_resource_group_name" {
  description = "List of resource_group_name values across all frontdoors"
  value       = [for k, v in azurerm_frontdoor.frontdoors : v.resource_group_name]
}
output "frontdoors_routing_rule" {
  description = "List of routing_rule values across all frontdoors"
  value       = [for k, v in azurerm_frontdoor.frontdoors : v.routing_rule]
}
output "frontdoors_routing_rules" {
  description = "List of routing_rules values across all frontdoors"
  value       = [for k, v in azurerm_frontdoor.frontdoors : v.routing_rules]
}
output "frontdoors_tags" {
  description = "List of tags values across all frontdoors"
  value       = [for k, v in azurerm_frontdoor.frontdoors : v.tags]
}

