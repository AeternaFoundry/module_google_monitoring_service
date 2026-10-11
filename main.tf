resource "google_monitoring_service" "monitoring_services" {
  for_each = var.monitoring_services

  service_id      = each.value.service_id
  deletion_policy = each.value.deletion_policy
  display_name    = each.value.display_name
  project         = each.value.project
  user_labels     = each.value.user_labels

  dynamic "basic_service" {
    for_each = each.value.basic_service != null ? [each.value.basic_service] : []
    content {
      service_labels = basic_service.value.service_labels
      service_type   = basic_service.value.service_type
    }
  }

  dynamic "timeouts" {
    for_each = each.value.timeouts != null ? [each.value.timeouts] : []
    content {
      create = timeouts.value.create
      delete = timeouts.value.delete
      update = timeouts.value.update
    }
  }
}

