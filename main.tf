resource "snowflake_image_repository" "image_repositories" {
  for_each = var.image_repositories

  database   = each.value.database
  name       = each.value.name
  schema     = each.value.schema
  comment    = each.value.comment
  encryption = each.value.encryption

  dynamic "timeouts" {
    for_each = each.value.timeouts != null ? [each.value.timeouts] : []
    content {
      create = timeouts.value.create
      delete = timeouts.value.delete
      read   = timeouts.value.read
      update = timeouts.value.update
    }
  }
}

