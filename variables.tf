variable "instance_profiles" {
  description = <<EOT
Map of instance_profiles, attributes below
Required:
    - instance_profile_arn
Optional:
    - iam_role_arn
    - is_meta_instance_profile
    - skip_validation
    - provider_config (block):
        - workspace_id (optional)
EOT

  type = map(object({
    instance_profile_arn     = string
    iam_role_arn             = optional(string)
    is_meta_instance_profile = optional(bool)
    skip_validation          = optional(bool)
    provider_config = optional(object({
      workspace_id = optional(string)
    }))
  }))
}

