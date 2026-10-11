resource "databricks_instance_profile" "instance_profiles" {
  for_each = var.instance_profiles

  instance_profile_arn     = each.value.instance_profile_arn
  iam_role_arn             = each.value.iam_role_arn
  is_meta_instance_profile = each.value.is_meta_instance_profile
  skip_validation          = each.value.skip_validation

  dynamic "provider_config" {
    for_each = each.value.provider_config != null ? [each.value.provider_config] : []
    content {
      workspace_id = provider_config.value.workspace_id
    }
  }
}

