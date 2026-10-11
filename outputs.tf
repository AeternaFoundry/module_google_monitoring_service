output "monitoring_services_id" {
  description = "Map of id values across all monitoring_services, keyed the same as var.monitoring_services except keys with no id are omitted"
  value       = { for k, v in google_monitoring_service.monitoring_services : k => v.id if v.id != null && length(v.id) > 0 }
}
output "monitoring_services_basic_service" {
  description = "Map of basic_service values across all monitoring_services, keyed the same as var.monitoring_services except keys with no basic_service are omitted"
  value       = { for k, v in google_monitoring_service.monitoring_services : k => one(v.basic_service) if v.basic_service != null && length(v.basic_service) > 0 }
}
output "monitoring_services_deletion_policy" {
  description = "Map of deletion_policy values across all monitoring_services, keyed the same as var.monitoring_services except keys with no deletion_policy are omitted"
  value       = { for k, v in google_monitoring_service.monitoring_services : k => v.deletion_policy if v.deletion_policy != null && length(v.deletion_policy) > 0 }
}
output "monitoring_services_display_name" {
  description = "Map of display_name values across all monitoring_services, keyed the same as var.monitoring_services except keys with no display_name are omitted"
  value       = { for k, v in google_monitoring_service.monitoring_services : k => v.display_name if v.display_name != null && length(v.display_name) > 0 }
}
output "monitoring_services_name" {
  description = "Map of name values across all monitoring_services, keyed the same as var.monitoring_services except keys with no name are omitted"
  value       = { for k, v in google_monitoring_service.monitoring_services : k => v.name if v.name != null && length(v.name) > 0 }
}
output "monitoring_services_project" {
  description = "Map of project values across all monitoring_services, keyed the same as var.monitoring_services except keys with no project are omitted"
  value       = { for k, v in google_monitoring_service.monitoring_services : k => v.project if v.project != null && length(v.project) > 0 }
}
output "monitoring_services_service_id" {
  description = "Map of service_id values across all monitoring_services, keyed the same as var.monitoring_services except keys with no service_id are omitted"
  value       = { for k, v in google_monitoring_service.monitoring_services : k => v.service_id if v.service_id != null && length(v.service_id) > 0 }
}
output "monitoring_services_telemetry" {
  description = "Map of telemetry values across all monitoring_services, keyed the same as var.monitoring_services except keys with no telemetry are omitted"
  value       = { for k, v in google_monitoring_service.monitoring_services : k => v.telemetry if v.telemetry != null && length(v.telemetry) > 0 }
}
output "monitoring_services_user_labels" {
  description = "Map of user_labels values across all monitoring_services, keyed the same as var.monitoring_services except keys with no user_labels are omitted"
  value       = { for k, v in google_monitoring_service.monitoring_services : k => v.user_labels if v.user_labels != null && length(v.user_labels) > 0 }
}

