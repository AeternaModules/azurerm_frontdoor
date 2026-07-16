output "frontdoors_id" {
  description = "Map of id values across all frontdoors, keyed the same as var.frontdoors"
  value       = { for k, v in azurerm_frontdoor.frontdoors : k => v.id if v.id != null && length(v.id) > 0 }
}
output "frontdoors_backend_pool" {
  description = "Map of backend_pool values across all frontdoors, keyed the same as var.frontdoors"
  value       = { for k, v in azurerm_frontdoor.frontdoors : k => v.backend_pool if v.backend_pool != null && length(v.backend_pool) > 0 }
}
output "frontdoors_backend_pool_health_probe" {
  description = "Map of backend_pool_health_probe values across all frontdoors, keyed the same as var.frontdoors"
  value       = { for k, v in azurerm_frontdoor.frontdoors : k => v.backend_pool_health_probe if v.backend_pool_health_probe != null && length(v.backend_pool_health_probe) > 0 }
}
output "frontdoors_backend_pool_health_probes" {
  description = "Map of backend_pool_health_probes values across all frontdoors, keyed the same as var.frontdoors"
  value       = { for k, v in azurerm_frontdoor.frontdoors : k => v.backend_pool_health_probes if v.backend_pool_health_probes != null && length(v.backend_pool_health_probes) > 0 }
}
output "frontdoors_backend_pool_load_balancing" {
  description = "Map of backend_pool_load_balancing values across all frontdoors, keyed the same as var.frontdoors"
  value       = { for k, v in azurerm_frontdoor.frontdoors : k => v.backend_pool_load_balancing if v.backend_pool_load_balancing != null && length(v.backend_pool_load_balancing) > 0 }
}
output "frontdoors_backend_pool_load_balancing_settings" {
  description = "Map of backend_pool_load_balancing_settings values across all frontdoors, keyed the same as var.frontdoors"
  value       = { for k, v in azurerm_frontdoor.frontdoors : k => v.backend_pool_load_balancing_settings if v.backend_pool_load_balancing_settings != null && length(v.backend_pool_load_balancing_settings) > 0 }
}
output "frontdoors_backend_pool_settings" {
  description = "Map of backend_pool_settings values across all frontdoors, keyed the same as var.frontdoors"
  value       = { for k, v in azurerm_frontdoor.frontdoors : k => v.backend_pool_settings if v.backend_pool_settings != null && length(v.backend_pool_settings) > 0 }
}
output "frontdoors_backend_pools" {
  description = "Map of backend_pools values across all frontdoors, keyed the same as var.frontdoors"
  value       = { for k, v in azurerm_frontdoor.frontdoors : k => v.backend_pools if v.backend_pools != null && length(v.backend_pools) > 0 }
}
output "frontdoors_cname" {
  description = "Map of cname values across all frontdoors, keyed the same as var.frontdoors"
  value       = { for k, v in azurerm_frontdoor.frontdoors : k => v.cname if v.cname != null && length(v.cname) > 0 }
}
output "frontdoors_explicit_resource_order" {
  description = "Map of explicit_resource_order values across all frontdoors, keyed the same as var.frontdoors"
  value       = { for k, v in azurerm_frontdoor.frontdoors : k => v.explicit_resource_order if v.explicit_resource_order != null && length(v.explicit_resource_order) > 0 }
}
output "frontdoors_friendly_name" {
  description = "Map of friendly_name values across all frontdoors, keyed the same as var.frontdoors"
  value       = { for k, v in azurerm_frontdoor.frontdoors : k => v.friendly_name if v.friendly_name != null && length(v.friendly_name) > 0 }
}
output "frontdoors_frontend_endpoint" {
  description = "Map of frontend_endpoint values across all frontdoors, keyed the same as var.frontdoors"
  value       = { for k, v in azurerm_frontdoor.frontdoors : k => v.frontend_endpoint if v.frontend_endpoint != null && length(v.frontend_endpoint) > 0 }
}
output "frontdoors_frontend_endpoints" {
  description = "Map of frontend_endpoints values across all frontdoors, keyed the same as var.frontdoors"
  value       = { for k, v in azurerm_frontdoor.frontdoors : k => v.frontend_endpoints if v.frontend_endpoints != null && length(v.frontend_endpoints) > 0 }
}
output "frontdoors_header_frontdoor_id" {
  description = "Map of header_frontdoor_id values across all frontdoors, keyed the same as var.frontdoors"
  value       = { for k, v in azurerm_frontdoor.frontdoors : k => v.header_frontdoor_id if v.header_frontdoor_id != null && length(v.header_frontdoor_id) > 0 }
}
output "frontdoors_load_balancer_enabled" {
  description = "Map of load_balancer_enabled values across all frontdoors, keyed the same as var.frontdoors"
  value       = { for k, v in azurerm_frontdoor.frontdoors : k => v.load_balancer_enabled if v.load_balancer_enabled != null }
}
output "frontdoors_name" {
  description = "Map of name values across all frontdoors, keyed the same as var.frontdoors"
  value       = { for k, v in azurerm_frontdoor.frontdoors : k => v.name if v.name != null && length(v.name) > 0 }
}
output "frontdoors_resource_group_name" {
  description = "Map of resource_group_name values across all frontdoors, keyed the same as var.frontdoors"
  value       = { for k, v in azurerm_frontdoor.frontdoors : k => v.resource_group_name if v.resource_group_name != null && length(v.resource_group_name) > 0 }
}
output "frontdoors_routing_rule" {
  description = "Map of routing_rule values across all frontdoors, keyed the same as var.frontdoors"
  value       = { for k, v in azurerm_frontdoor.frontdoors : k => v.routing_rule if v.routing_rule != null && length(v.routing_rule) > 0 }
}
output "frontdoors_routing_rules" {
  description = "Map of routing_rules values across all frontdoors, keyed the same as var.frontdoors"
  value       = { for k, v in azurerm_frontdoor.frontdoors : k => v.routing_rules if v.routing_rules != null && length(v.routing_rules) > 0 }
}
output "frontdoors_tags" {
  description = "Map of tags values across all frontdoors, keyed the same as var.frontdoors"
  value       = { for k, v in azurerm_frontdoor.frontdoors : k => v.tags if v.tags != null && length(v.tags) > 0 }
}

