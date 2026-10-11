output "group_permissions_id" {
  description = "Map of id values across all group_permissions, keyed the same as var.group_permissions except keys with no id are omitted"
  value       = { for k, v in keycloak_group_permissions.group_permissions : k => v.id if v.id != null && length(v.id) > 0 }
}
output "group_permissions_authorization_resource_server_id" {
  description = "Map of authorization_resource_server_id values across all group_permissions, keyed the same as var.group_permissions except keys with no authorization_resource_server_id are omitted"
  value       = { for k, v in keycloak_group_permissions.group_permissions : k => v.authorization_resource_server_id if v.authorization_resource_server_id != null && length(v.authorization_resource_server_id) > 0 }
}
output "group_permissions_enabled" {
  description = "Map of enabled values across all group_permissions, keyed the same as var.group_permissions except keys with no enabled are omitted"
  value       = { for k, v in keycloak_group_permissions.group_permissions : k => v.enabled if v.enabled != null }
}
output "group_permissions_group_id" {
  description = "Map of group_id values across all group_permissions, keyed the same as var.group_permissions except keys with no group_id are omitted"
  value       = { for k, v in keycloak_group_permissions.group_permissions : k => v.group_id if v.group_id != null && length(v.group_id) > 0 }
}
output "group_permissions_manage_members_scope" {
  description = "Map of manage_members_scope values across all group_permissions, keyed the same as var.group_permissions except keys with no manage_members_scope are omitted"
  value       = { for k, v in keycloak_group_permissions.group_permissions : k => one(v.manage_members_scope) if v.manage_members_scope != null && length(v.manage_members_scope) > 0 }
}
output "group_permissions_manage_membership_scope" {
  description = "Map of manage_membership_scope values across all group_permissions, keyed the same as var.group_permissions except keys with no manage_membership_scope are omitted"
  value       = { for k, v in keycloak_group_permissions.group_permissions : k => one(v.manage_membership_scope) if v.manage_membership_scope != null && length(v.manage_membership_scope) > 0 }
}
output "group_permissions_manage_scope" {
  description = "Map of manage_scope values across all group_permissions, keyed the same as var.group_permissions except keys with no manage_scope are omitted"
  value       = { for k, v in keycloak_group_permissions.group_permissions : k => one(v.manage_scope) if v.manage_scope != null && length(v.manage_scope) > 0 }
}
output "group_permissions_realm_id" {
  description = "Map of realm_id values across all group_permissions, keyed the same as var.group_permissions except keys with no realm_id are omitted"
  value       = { for k, v in keycloak_group_permissions.group_permissions : k => v.realm_id if v.realm_id != null && length(v.realm_id) > 0 }
}
output "group_permissions_view_members_scope" {
  description = "Map of view_members_scope values across all group_permissions, keyed the same as var.group_permissions except keys with no view_members_scope are omitted"
  value       = { for k, v in keycloak_group_permissions.group_permissions : k => one(v.view_members_scope) if v.view_members_scope != null && length(v.view_members_scope) > 0 }
}
output "group_permissions_view_scope" {
  description = "Map of view_scope values across all group_permissions, keyed the same as var.group_permissions except keys with no view_scope are omitted"
  value       = { for k, v in keycloak_group_permissions.group_permissions : k => one(v.view_scope) if v.view_scope != null && length(v.view_scope) > 0 }
}

