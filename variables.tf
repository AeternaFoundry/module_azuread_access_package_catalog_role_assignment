variable "access_package_catalog_role_assignments" {
  description = <<EOT
Map of access_package_catalog_role_assignments, attributes below
Required:
    - catalog_id
    - principal_object_id
    - role_id
EOT

  type = map(object({
    catalog_id          = string
    principal_object_id = string
    role_id             = string
  }))
  validation {
    condition = alltrue([
      for k, v in var.access_package_catalog_role_assignments : (
        can(regex("^[0-9a-fA-F]{8}-[0-9a-fA-F]{4}-[0-9a-fA-F]{4}-[0-9a-fA-F]{4}-[0-9a-fA-F]{12}$", v.role_id))
      )
    ])
    error_message = "must be a valid UUID"
  }
  validation {
    condition = alltrue([
      for k, v in var.access_package_catalog_role_assignments : (
        can(regex("^[0-9a-fA-F]{8}-[0-9a-fA-F]{4}-[0-9a-fA-F]{4}-[0-9a-fA-F]{4}-[0-9a-fA-F]{12}$", v.principal_object_id))
      )
    ])
    error_message = "must be a valid UUID"
  }
  validation {
    condition = alltrue([
      for k, v in var.access_package_catalog_role_assignments : (
        can(regex("^[0-9a-fA-F]{8}-[0-9a-fA-F]{4}-[0-9a-fA-F]{4}-[0-9a-fA-F]{4}-[0-9a-fA-F]{12}$", v.catalog_id))
      )
    ])
    error_message = "must be a valid UUID"
  }
}

