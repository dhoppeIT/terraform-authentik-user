module "authentik_user" {
  source = "../../"

  username = "jdoe"

  name = "John Doe"
  groups = [
    data.authentik_group.this.id
  ]
}
