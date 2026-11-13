output "group_permissions_id" {
  description = "Map of id values across all group_permissions, keyed the same as var.group_permissions"
  value       = { for k, v in keycloak_group_permissions.group_permissions : k => v.id }
}
output "group_permissions_authorization_resource_server_id" {
  description = "Map of authorization_resource_server_id values across all group_permissions, keyed the same as var.group_permissions"
  value       = { for k, v in keycloak_group_permissions.group_permissions : k => v.authorization_resource_server_id }
}
output "group_permissions_enabled" {
  description = "Map of enabled values across all group_permissions, keyed the same as var.group_permissions"
  value       = { for k, v in keycloak_group_permissions.group_permissions : k => v.enabled }
}
output "group_permissions_group_id" {
  description = "Map of group_id values across all group_permissions, keyed the same as var.group_permissions"
  value       = { for k, v in keycloak_group_permissions.group_permissions : k => v.group_id }
}
output "group_permissions_manage_members_scope" {
  description = "Map of manage_members_scope values across all group_permissions, keyed the same as var.group_permissions"
  value       = { for k, v in keycloak_group_permissions.group_permissions : k => one(v.manage_members_scope) }
}
output "group_permissions_manage_membership_scope" {
  description = "Map of manage_membership_scope values across all group_permissions, keyed the same as var.group_permissions"
  value       = { for k, v in keycloak_group_permissions.group_permissions : k => one(v.manage_membership_scope) }
}
output "group_permissions_manage_scope" {
  description = "Map of manage_scope values across all group_permissions, keyed the same as var.group_permissions"
  value       = { for k, v in keycloak_group_permissions.group_permissions : k => one(v.manage_scope) }
}
output "group_permissions_realm_id" {
  description = "Map of realm_id values across all group_permissions, keyed the same as var.group_permissions"
  value       = { for k, v in keycloak_group_permissions.group_permissions : k => v.realm_id }
}
output "group_permissions_view_members_scope" {
  description = "Map of view_members_scope values across all group_permissions, keyed the same as var.group_permissions"
  value       = { for k, v in keycloak_group_permissions.group_permissions : k => one(v.view_members_scope) }
}
output "group_permissions_view_scope" {
  description = "Map of view_scope values across all group_permissions, keyed the same as var.group_permissions"
  value       = { for k, v in keycloak_group_permissions.group_permissions : k => one(v.view_scope) }
}

