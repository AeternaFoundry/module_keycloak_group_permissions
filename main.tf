resource "keycloak_group_permissions" "group_permissions" {
  for_each = var.group_permissions

  group_id = each.value.group_id
  realm_id = each.value.realm_id

  dynamic "manage_members_scope" {
    for_each = each.value.manage_members_scope != null ? [each.value.manage_members_scope] : []
    content {
      decision_strategy = manage_members_scope.value.decision_strategy
      description       = manage_members_scope.value.description
      policies          = manage_members_scope.value.policies
    }
  }

  dynamic "manage_membership_scope" {
    for_each = each.value.manage_membership_scope != null ? [each.value.manage_membership_scope] : []
    content {
      decision_strategy = manage_membership_scope.value.decision_strategy
      description       = manage_membership_scope.value.description
      policies          = manage_membership_scope.value.policies
    }
  }

  dynamic "manage_scope" {
    for_each = each.value.manage_scope != null ? [each.value.manage_scope] : []
    content {
      decision_strategy = manage_scope.value.decision_strategy
      description       = manage_scope.value.description
      policies          = manage_scope.value.policies
    }
  }

  dynamic "view_members_scope" {
    for_each = each.value.view_members_scope != null ? [each.value.view_members_scope] : []
    content {
      decision_strategy = view_members_scope.value.decision_strategy
      description       = view_members_scope.value.description
      policies          = view_members_scope.value.policies
    }
  }

  dynamic "view_scope" {
    for_each = each.value.view_scope != null ? [each.value.view_scope] : []
    content {
      decision_strategy = view_scope.value.decision_strategy
      description       = view_scope.value.description
      policies          = view_scope.value.policies
    }
  }
}

