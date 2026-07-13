variable "frontdoors" {
  description = <<EOT
Map of frontdoors, attributes below
Required:
    - name
    - resource_group_name
    - backend_pool (block):
        - backend (required, block):
            - address (required)
            - enabled (optional)
            - host_header (required)
            - http_port (required)
            - https_port (required)
            - priority (optional)
            - weight (optional)
        - health_probe_name (required)
        - load_balancing_name (required)
        - name (required)
    - backend_pool_health_probe (block):
        - enabled (optional)
        - interval_in_seconds (optional)
        - name (required)
        - path (optional)
        - probe_method (optional)
        - protocol (optional)
    - backend_pool_load_balancing (block):
        - additional_latency_milliseconds (optional)
        - name (required)
        - sample_size (optional)
        - successful_samples_required (optional)
    - frontend_endpoint (block):
        - host_name (required)
        - name (required)
        - session_affinity_enabled (optional)
        - session_affinity_ttl_seconds (optional)
        - web_application_firewall_policy_link_id (optional)
    - routing_rule (block):
        - accepted_protocols (required)
        - enabled (optional)
        - forwarding_configuration (optional, block):
            - backend_pool_name (required)
            - cache_duration (optional)
            - cache_enabled (optional)
            - cache_query_parameter_strip_directive (optional)
            - cache_query_parameters (optional)
            - cache_use_dynamic_compression (optional)
            - custom_forwarding_path (optional)
            - forwarding_protocol (optional)
        - frontend_endpoints (required)
        - name (required)
        - patterns_to_match (required)
        - redirect_configuration (optional, block):
            - custom_fragment (optional)
            - custom_host (optional)
            - custom_path (optional)
            - custom_query_string (optional)
            - redirect_protocol (required)
            - redirect_type (required)
Optional:
    - friendly_name
    - load_balancer_enabled
    - tags
    - backend_pool_settings (block):
        - backend_pools_send_receive_timeout_seconds (optional)
        - enforce_backend_pools_certificate_name_check (required)
EOT

  type = map(object({
    name                  = string
    resource_group_name   = string
    friendly_name         = optional(string)
    load_balancer_enabled = optional(bool)
    tags                  = optional(map(string))
    backend_pool = list(object({
      backend = list(object({
        address     = string
        enabled     = optional(bool)
        host_header = string
        http_port   = number
        https_port  = number
        priority    = optional(number)
        weight      = optional(number)
      }))
      health_probe_name   = string
      load_balancing_name = string
      name                = string
    }))
    backend_pool_health_probe = list(object({
      enabled             = optional(bool)
      interval_in_seconds = optional(number)
      name                = string
      path                = optional(string)
      probe_method        = optional(string)
      protocol            = optional(string)
    }))
    backend_pool_load_balancing = list(object({
      additional_latency_milliseconds = optional(number)
      name                            = string
      sample_size                     = optional(number)
      successful_samples_required     = optional(number)
    }))
    frontend_endpoint = list(object({
      host_name                               = string
      name                                    = string
      session_affinity_enabled                = optional(bool)
      session_affinity_ttl_seconds            = optional(number)
      web_application_firewall_policy_link_id = optional(string)
    }))
    routing_rule = list(object({
      accepted_protocols = list(string)
      enabled            = optional(bool)
      forwarding_configuration = optional(object({
        backend_pool_name                     = string
        cache_duration                        = optional(string)
        cache_enabled                         = optional(bool)
        cache_query_parameter_strip_directive = optional(string)
        cache_query_parameters                = optional(list(string))
        cache_use_dynamic_compression         = optional(bool)
        custom_forwarding_path                = optional(string)
        forwarding_protocol                   = optional(string)
      }))
      frontend_endpoints = list(string)
      name               = string
      patterns_to_match  = list(string)
      redirect_configuration = optional(object({
        custom_fragment     = optional(string)
        custom_host         = optional(string)
        custom_path         = optional(string)
        custom_query_string = optional(string)
        redirect_protocol   = string
        redirect_type       = string
      }))
    }))
    backend_pool_settings = optional(list(object({
      backend_pools_send_receive_timeout_seconds   = optional(number)
      enforce_backend_pools_certificate_name_check = bool
    })))
  }))
  validation {
    condition = alltrue([
      for k, v in var.frontdoors : (
        length(v.backend_pool) >= 1
      )
    ])
    error_message = "Each backend_pool list must contain at least 1 items"
  }
  validation {
    condition = alltrue([
      for k, v in var.frontdoors : (
        alltrue([for item in v.backend_pool : (length(item.backend) >= 1 && length(item.backend) <= 500)])
      )
    ])
    error_message = "Each backend list must contain between 1 and 500 items"
  }
  validation {
    condition = alltrue([
      for k, v in var.frontdoors : (
        length(v.backend_pool_health_probe) >= 1 && length(v.backend_pool_health_probe) <= 5000
      )
    ])
    error_message = "Each backend_pool_health_probe list must contain between 1 and 5000 items"
  }
  validation {
    condition = alltrue([
      for k, v in var.frontdoors : (
        length(v.backend_pool_load_balancing) >= 1 && length(v.backend_pool_load_balancing) <= 5000
      )
    ])
    error_message = "Each backend_pool_load_balancing list must contain between 1 and 5000 items"
  }
  validation {
    condition = alltrue([
      for k, v in var.frontdoors : (
        length(v.frontend_endpoint) >= 1 && length(v.frontend_endpoint) <= 500
      )
    ])
    error_message = "Each frontend_endpoint list must contain between 1 and 500 items"
  }
  validation {
    condition = alltrue([
      for k, v in var.frontdoors : (
        length(v.routing_rule) >= 1 && length(v.routing_rule) <= 500
      )
    ])
    error_message = "Each routing_rule list must contain between 1 and 500 items"
  }
}

