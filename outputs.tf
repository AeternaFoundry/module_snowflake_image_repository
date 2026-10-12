output "image_repositories_id" {
  description = "Map of id values across all image_repositories, keyed the same as var.image_repositories except keys with no id are omitted"
  value       = { for k, v in snowflake_image_repository.image_repositories : k => v.id if v.id != null && length(v.id) > 0 }
}
output "image_repositories_comment" {
  description = "Map of comment values across all image_repositories, keyed the same as var.image_repositories except keys with no comment are omitted"
  value       = { for k, v in snowflake_image_repository.image_repositories : k => v.comment if v.comment != null && length(v.comment) > 0 }
}
output "image_repositories_database" {
  description = "Map of database values across all image_repositories, keyed the same as var.image_repositories except keys with no database are omitted"
  value       = { for k, v in snowflake_image_repository.image_repositories : k => v.database if v.database != null && length(v.database) > 0 }
}
output "image_repositories_encryption" {
  description = "Map of encryption values across all image_repositories, keyed the same as var.image_repositories except keys with no encryption are omitted"
  value       = { for k, v in snowflake_image_repository.image_repositories : k => v.encryption if v.encryption != null && length(v.encryption) > 0 }
}
output "image_repositories_fully_qualified_name" {
  description = "Map of fully_qualified_name values across all image_repositories, keyed the same as var.image_repositories except keys with no fully_qualified_name are omitted"
  value       = { for k, v in snowflake_image_repository.image_repositories : k => v.fully_qualified_name if v.fully_qualified_name != null && length(v.fully_qualified_name) > 0 }
}
output "image_repositories_name" {
  description = "Map of name values across all image_repositories, keyed the same as var.image_repositories except keys with no name are omitted"
  value       = { for k, v in snowflake_image_repository.image_repositories : k => v.name if v.name != null && length(v.name) > 0 }
}
output "image_repositories_schema" {
  description = "Map of schema values across all image_repositories, keyed the same as var.image_repositories except keys with no schema are omitted"
  value       = { for k, v in snowflake_image_repository.image_repositories : k => v.schema if v.schema != null && length(v.schema) > 0 }
}
output "image_repositories_show_output" {
  description = "Map of show_output values across all image_repositories, keyed the same as var.image_repositories except keys with no show_output are omitted"
  value       = { for k, v in snowflake_image_repository.image_repositories : k => v.show_output if v.show_output != null && length(v.show_output) > 0 }
}

