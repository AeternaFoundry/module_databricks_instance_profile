output "instance_profiles_id" {
  description = "Map of id values across all instance_profiles, keyed the same as var.instance_profiles except keys with no id are omitted"
  value       = { for k, v in databricks_instance_profile.instance_profiles : k => v.id if v.id != null && length(v.id) > 0 }
}
output "instance_profiles_iam_role_arn" {
  description = "Map of iam_role_arn values across all instance_profiles, keyed the same as var.instance_profiles except keys with no iam_role_arn are omitted"
  value       = { for k, v in databricks_instance_profile.instance_profiles : k => v.iam_role_arn if v.iam_role_arn != null && length(v.iam_role_arn) > 0 }
}
output "instance_profiles_instance_profile_arn" {
  description = "Map of instance_profile_arn values across all instance_profiles, keyed the same as var.instance_profiles except keys with no instance_profile_arn are omitted"
  value       = { for k, v in databricks_instance_profile.instance_profiles : k => v.instance_profile_arn if v.instance_profile_arn != null && length(v.instance_profile_arn) > 0 }
}
output "instance_profiles_is_meta_instance_profile" {
  description = "Map of is_meta_instance_profile values across all instance_profiles, keyed the same as var.instance_profiles except keys with no is_meta_instance_profile are omitted"
  value       = { for k, v in databricks_instance_profile.instance_profiles : k => v.is_meta_instance_profile if v.is_meta_instance_profile != null }
}
output "instance_profiles_provider_config" {
  description = "Map of provider_config values across all instance_profiles, keyed the same as var.instance_profiles except keys with no provider_config are omitted"
  value       = { for k, v in databricks_instance_profile.instance_profiles : k => one(v.provider_config) if v.provider_config != null && length(v.provider_config) > 0 }
}
output "instance_profiles_skip_validation" {
  description = "Map of skip_validation values across all instance_profiles, keyed the same as var.instance_profiles except keys with no skip_validation are omitted"
  value       = { for k, v in databricks_instance_profile.instance_profiles : k => v.skip_validation if v.skip_validation != null }
}

