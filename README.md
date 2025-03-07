# terraform-authentik-user

Terraform module to manage the following Twingate resources:

* authentik_user

## Usage

Copy and paste the following code snippet to your Terraform configuration,
specify the required variables and run the command `terraform init`.

```hcl
module "authentik_group" {
  source  = "gitlab.com/terraform-child-modules-48151/terraform-authentik-group/local"
  version = "1.0.0"

  name = "example-group"
}

module "authentik_user" {
  source  = "gitlab.com/terraform-child-modules-48151/terraform-authentik-user/local"
  version = "1.0.0"

  username = "jdoe"

  name = "John Doe"
  groups = [
    module.authentik_group.id
  ]
}
```

<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.0 |
| <a name="requirement_authentik"></a> [authentik](#requirement\_authentik) | ~> 2024.12 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_authentik"></a> [authentik](#provider\_authentik) | ~> 2024.12 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [authentik_user.this](https://registry.terraform.io/providers/goauthentik/authentik/latest/docs/resources/user) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_attributes"></a> [attributes](#input\_attributes) | Custom attributes definition for the user | `string` | `"{}"` | no |
| <a name="input_email"></a> [email](#input\_email) | The email address of the user | `string` | `null` | no |
| <a name="input_groups"></a> [groups](#input\_groups) | List of groups to apply to this user | `list(string)` | `null` | no |
| <a name="input_is_active"></a> [is\_active](#input\_is\_active) | Define if the newly created user account is active | `bool` | `true` | no |
| <a name="input_name"></a> [name](#input\_name) | The display name of the user | `string` | `""` | no |
| <a name="input_password"></a> [password](#input\_password) | The password of the user | `string` | `null` | no |
| <a name="input_path"></a> [path](#input\_path) | The path where the user will be created | `string` | `"users"` | no |
| <a name="input_type"></a> [type](#input\_type) | The type the user will be created as | `string` | `"internal"` | no |
| <a name="input_username"></a> [username](#input\_username) | Name of the user | `string` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_id"></a> [id](#output\_id) | The ID of this resource |
<!-- END_TF_DOCS -->

## Authors

Created and maintained by [Dennis Hoppe](https://gitlab.com/dhoppeIT).

## License

Apache 2 licensed. See [LICENSE](LICENSE) for full details.
