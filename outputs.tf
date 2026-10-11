output "access_package_catalog_role_assignments_id" {
  description = "Map of id values across all access_package_catalog_role_assignments, keyed the same as var.access_package_catalog_role_assignments"
  value       = { for k, v in azuread_access_package_catalog_role_assignment.access_package_catalog_role_assignments : k => v.id if v.id != null && length(v.id) > 0 }
}
output "access_package_catalog_role_assignments_catalog_id" {
  description = "Map of catalog_id values across all access_package_catalog_role_assignments, keyed the same as var.access_package_catalog_role_assignments"
  value       = { for k, v in azuread_access_package_catalog_role_assignment.access_package_catalog_role_assignments : k => v.catalog_id if v.catalog_id != null && length(v.catalog_id) > 0 }
}
output "access_package_catalog_role_assignments_principal_object_id" {
  description = "Map of principal_object_id values across all access_package_catalog_role_assignments, keyed the same as var.access_package_catalog_role_assignments"
  value       = { for k, v in azuread_access_package_catalog_role_assignment.access_package_catalog_role_assignments : k => v.principal_object_id if v.principal_object_id != null && length(v.principal_object_id) > 0 }
}
output "access_package_catalog_role_assignments_role_id" {
  description = "Map of role_id values across all access_package_catalog_role_assignments, keyed the same as var.access_package_catalog_role_assignments"
  value       = { for k, v in azuread_access_package_catalog_role_assignment.access_package_catalog_role_assignments : k => v.role_id if v.role_id != null && length(v.role_id) > 0 }
}

