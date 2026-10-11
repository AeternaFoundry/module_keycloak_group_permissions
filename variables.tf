variable "group_permissions" {
  description = <<EOT
Map of group_permissions, attributes below
Required:
    - group_id
    - realm_id
Optional:
    - manage_members_scope (block):
        - decision_strategy (optional)
        - description (optional)
        - policies (optional)
    - manage_membership_scope (block):
        - decision_strategy (optional)
        - description (optional)
        - policies (optional)
    - manage_scope (block):
        - decision_strategy (optional)
        - description (optional)
        - policies (optional)
    - view_members_scope (block):
        - decision_strategy (optional)
        - description (optional)
        - policies (optional)
    - view_scope (block):
        - decision_strategy (optional)
        - description (optional)
        - policies (optional)
EOT

  type = map(object({
    group_id = string
    realm_id = string
    manage_members_scope = optional(object({
      decision_strategy = optional(string)
      description       = optional(string)
      policies          = optional(set(string))
    }))
    manage_membership_scope = optional(object({
      decision_strategy = optional(string)
      description       = optional(string)
      policies          = optional(set(string))
    }))
    manage_scope = optional(object({
      decision_strategy = optional(string)
      description       = optional(string)
      policies          = optional(set(string))
    }))
    view_members_scope = optional(object({
      decision_strategy = optional(string)
      description       = optional(string)
      policies          = optional(set(string))
    }))
    view_scope = optional(object({
      decision_strategy = optional(string)
      description       = optional(string)
      policies          = optional(set(string))
    }))
  }))
  # Note: 5 additional provider-side validators are enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

