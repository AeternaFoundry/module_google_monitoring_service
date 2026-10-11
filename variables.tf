variable "monitoring_services" {
  description = <<EOT
Map of monitoring_services, attributes below
Required:
    - service_id
Optional:
    - deletion_policy
    - display_name
    - project
    - user_labels
    - basic_service (block):
        - service_labels (optional)
        - service_type (optional)
    - timeouts (block):
        - create (optional)
        - delete (optional)
        - update (optional)
EOT

  type = map(object({
    service_id      = string
    deletion_policy = optional(string)
    display_name    = optional(string)
    project         = optional(string)
    user_labels     = optional(map(string))
    basic_service = optional(object({
      service_labels = optional(map(string))
      service_type   = optional(string)
    }))
    timeouts = optional(object({
      create = optional(string)
      delete = optional(string)
      update = optional(string)
    }))
  }))
}

