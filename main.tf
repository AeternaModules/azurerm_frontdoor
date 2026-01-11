resource "azurerm_frontdoor" "frontdoors" {
  for_each = var.frontdoors

  name                  = each.value.name
  resource_group_name   = each.value.resource_group_name
  friendly_name         = each.value.friendly_name
  load_balancer_enabled = each.value.load_balancer_enabled
  tags                  = each.value.tags

  backend_pool {
    dynamic "backend" {
      for_each = each.value.backend_pool.backend
      content {
        address     = backend.value.address
        enabled     = backend.value.enabled
        host_header = backend.value.host_header
        http_port   = backend.value.http_port
        https_port  = backend.value.https_port
        priority    = backend.value.priority
        weight      = backend.value.weight
      }
    }
    health_probe_name   = each.value.backend_pool.health_probe_name
    load_balancing_name = each.value.backend_pool.load_balancing_name
    name                = each.value.backend_pool.name
  }

  dynamic "backend_pool_health_probe" {
    for_each = each.value.backend_pool_health_probe
    content {
      enabled             = backend_pool_health_probe.value.enabled
      interval_in_seconds = backend_pool_health_probe.value.interval_in_seconds
      name                = backend_pool_health_probe.value.name
      path                = backend_pool_health_probe.value.path
      probe_method        = backend_pool_health_probe.value.probe_method
      protocol            = backend_pool_health_probe.value.protocol
    }
  }

  dynamic "backend_pool_load_balancing" {
    for_each = each.value.backend_pool_load_balancing
    content {
      additional_latency_milliseconds = backend_pool_load_balancing.value.additional_latency_milliseconds
      name                            = backend_pool_load_balancing.value.name
      sample_size                     = backend_pool_load_balancing.value.sample_size
      successful_samples_required     = backend_pool_load_balancing.value.successful_samples_required
    }
  }

  dynamic "frontend_endpoint" {
    for_each = each.value.frontend_endpoint
    content {
      host_name                               = frontend_endpoint.value.host_name
      name                                    = frontend_endpoint.value.name
      session_affinity_enabled                = frontend_endpoint.value.session_affinity_enabled
      session_affinity_ttl_seconds            = frontend_endpoint.value.session_affinity_ttl_seconds
      web_application_firewall_policy_link_id = frontend_endpoint.value.web_application_firewall_policy_link_id
    }
  }

  dynamic "routing_rule" {
    for_each = each.value.routing_rule
    content {
      accepted_protocols = routing_rule.value.accepted_protocols
      enabled            = routing_rule.value.enabled
      dynamic "forwarding_configuration" {
        for_each = routing_rule.value.forwarding_configuration != null ? [routing_rule.value.forwarding_configuration] : []
        content {
          backend_pool_name                     = forwarding_configuration.value.backend_pool_name
          cache_duration                        = forwarding_configuration.value.cache_duration
          cache_enabled                         = forwarding_configuration.value.cache_enabled
          cache_query_parameter_strip_directive = forwarding_configuration.value.cache_query_parameter_strip_directive
          cache_query_parameters                = forwarding_configuration.value.cache_query_parameters
          cache_use_dynamic_compression         = forwarding_configuration.value.cache_use_dynamic_compression
          custom_forwarding_path                = forwarding_configuration.value.custom_forwarding_path
          forwarding_protocol                   = forwarding_configuration.value.forwarding_protocol
        }
      }
      frontend_endpoints = routing_rule.value.frontend_endpoints
      name               = routing_rule.value.name
      patterns_to_match  = routing_rule.value.patterns_to_match
      dynamic "redirect_configuration" {
        for_each = routing_rule.value.redirect_configuration != null ? [routing_rule.value.redirect_configuration] : []
        content {
          custom_fragment     = redirect_configuration.value.custom_fragment
          custom_host         = redirect_configuration.value.custom_host
          custom_path         = redirect_configuration.value.custom_path
          custom_query_string = redirect_configuration.value.custom_query_string
          redirect_protocol   = redirect_configuration.value.redirect_protocol
          redirect_type       = redirect_configuration.value.redirect_type
        }
      }
    }
  }

  dynamic "backend_pool_settings" {
    for_each = each.value.backend_pool_settings != null ? [each.value.backend_pool_settings] : []
    content {
      backend_pools_send_receive_timeout_seconds   = backend_pool_settings.value.backend_pools_send_receive_timeout_seconds
      enforce_backend_pools_certificate_name_check = backend_pool_settings.value.enforce_backend_pools_certificate_name_check
    }
  }
}

