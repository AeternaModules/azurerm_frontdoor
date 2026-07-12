output "frontdoors_backend_pool" {
  description = "Map of backend_pool values across all frontdoors, keyed the same as var.frontdoors"
  value       = { for k, v in azurerm_frontdoor.frontdoors : k => v.backend_pool }
}
output "frontdoors_backend_pool_health_probe" {
  description = "Map of backend_pool_health_probe values across all frontdoors, keyed the same as var.frontdoors"
  value       = { for k, v in azurerm_frontdoor.frontdoors : k => v.backend_pool_health_probe }
}
output "frontdoors_backend_pool_health_probes" {
  description = "Map of backend_pool_health_probes values across all frontdoors, keyed the same as var.frontdoors"
  value       = { for k, v in azurerm_frontdoor.frontdoors : k => v.backend_pool_health_probes }
}
output "frontdoors_backend_pool_load_balancing" {
  description = "Map of backend_pool_load_balancing values across all frontdoors, keyed the same as var.frontdoors"
  value       = { for k, v in azurerm_frontdoor.frontdoors : k => v.backend_pool_load_balancing }
}
output "frontdoors_backend_pool_load_balancing_settings" {
  description = "Map of backend_pool_load_balancing_settings values across all frontdoors, keyed the same as var.frontdoors"
  value       = { for k, v in azurerm_frontdoor.frontdoors : k => v.backend_pool_load_balancing_settings }
}
output "frontdoors_backend_pool_settings" {
  description = "Map of backend_pool_settings values across all frontdoors, keyed the same as var.frontdoors"
  value       = { for k, v in azurerm_frontdoor.frontdoors : k => v.backend_pool_settings }
}
output "frontdoors_backend_pools" {
  description = "Map of backend_pools values across all frontdoors, keyed the same as var.frontdoors"
  value       = { for k, v in azurerm_frontdoor.frontdoors : k => v.backend_pools }
}
output "frontdoors_cname" {
  description = "Map of cname values across all frontdoors, keyed the same as var.frontdoors"
  value       = { for k, v in azurerm_frontdoor.frontdoors : k => v.cname }
}
output "frontdoors_explicit_resource_order" {
  description = "Map of explicit_resource_order values across all frontdoors, keyed the same as var.frontdoors"
  value       = { for k, v in azurerm_frontdoor.frontdoors : k => v.explicit_resource_order }
}
output "frontdoors_friendly_name" {
  description = "Map of friendly_name values across all frontdoors, keyed the same as var.frontdoors"
  value       = { for k, v in azurerm_frontdoor.frontdoors : k => v.friendly_name }
}
output "frontdoors_frontend_endpoint" {
  description = "Map of frontend_endpoint values across all frontdoors, keyed the same as var.frontdoors"
  value       = { for k, v in azurerm_frontdoor.frontdoors : k => v.frontend_endpoint }
}
output "frontdoors_frontend_endpoints" {
  description = "Map of frontend_endpoints values across all frontdoors, keyed the same as var.frontdoors"
  value       = { for k, v in azurerm_frontdoor.frontdoors : k => v.frontend_endpoints }
}
output "frontdoors_header_frontdoor_id" {
  description = "Map of header_frontdoor_id values across all frontdoors, keyed the same as var.frontdoors"
  value       = { for k, v in azurerm_frontdoor.frontdoors : k => v.header_frontdoor_id }
}
output "frontdoors_load_balancer_enabled" {
  description = "Map of load_balancer_enabled values across all frontdoors, keyed the same as var.frontdoors"
  value       = { for k, v in azurerm_frontdoor.frontdoors : k => v.load_balancer_enabled }
}
output "frontdoors_name" {
  description = "Map of name values across all frontdoors, keyed the same as var.frontdoors"
  value       = { for k, v in azurerm_frontdoor.frontdoors : k => v.name }
}
output "frontdoors_resource_group_name" {
  description = "Map of resource_group_name values across all frontdoors, keyed the same as var.frontdoors"
  value       = { for k, v in azurerm_frontdoor.frontdoors : k => v.resource_group_name }
}
output "frontdoors_routing_rule" {
  description = "Map of routing_rule values across all frontdoors, keyed the same as var.frontdoors"
  value       = { for k, v in azurerm_frontdoor.frontdoors : k => v.routing_rule }
}
output "frontdoors_routing_rules" {
  description = "Map of routing_rules values across all frontdoors, keyed the same as var.frontdoors"
  value       = { for k, v in azurerm_frontdoor.frontdoors : k => v.routing_rules }
}
output "frontdoors_tags" {
  description = "Map of tags values across all frontdoors, keyed the same as var.frontdoors"
  value       = { for k, v in azurerm_frontdoor.frontdoors : k => v.tags }
}

