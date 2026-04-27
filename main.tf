resource "authentik_user" "this" {
  username = var.username

  attributes = var.attributes
  email      = var.email
  groups     = var.groups
  is_active  = var.is_active
  name       = var.name
  password   = var.password
  path       = var.path
  roles      = var.roles
  type       = var.type
}
