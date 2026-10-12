variable "image_repositories" {
  description = <<EOT
Map of image_repositories, attributes below
Required:
    - database
    - name
    - schema
Optional:
    - comment
    - encryption
    - timeouts (block):
        - create (optional)
        - delete (optional)
        - read (optional)
        - update (optional)
EOT

  type = map(object({
    database   = string
    name       = string
    schema     = string
    comment    = optional(string)
    encryption = optional(string)
    timeouts = optional(object({
      create = optional(string)
      delete = optional(string)
      read   = optional(string)
      update = optional(string)
    }))
  }))
}

