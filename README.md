## Projects

A module designed to create and manage projects. The module is designed to automatically add agencies required for KMS-SSE and CCE to all projects it creates. It will also add the same agencies to existing region level projects (eu-de and eu-nl).

Usage example:

```hcl
module "projects" {
  source     = "iits-consulting/projects/opentelekomcloud"

  projects   = {
    eu-de_myproject-dev  = "Development stage for the myproject."
    eu-de_myproject-prod = "Production stage for the myproject."
  }
}
```

<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.5.7 |
| <a name="requirement_opentelekomcloud"></a> [opentelekomcloud](#requirement\_opentelekomcloud) | >= 1.36.24, ~> 1.36 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_opentelekomcloud"></a> [opentelekomcloud](#provider\_opentelekomcloud) | >= 1.36.24, ~> 1.36 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [opentelekomcloud_identity_agency_v3.cce_admin_trust](https://registry.terraform.io/providers/opentelekomcloud/opentelekomcloud/latest/docs/resources/identity_agency_v3) | resource |
| [opentelekomcloud_identity_agency_v3.evs_access_kms](https://registry.terraform.io/providers/opentelekomcloud/opentelekomcloud/latest/docs/resources/identity_agency_v3) | resource |
| [opentelekomcloud_identity_project_v3.projects](https://registry.terraform.io/providers/opentelekomcloud/opentelekomcloud/latest/docs/resources/identity_project_v3) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_projects"></a> [projects](#input\_projects) | A map of project names to project descriptions. | `map(string)` | n/a | yes |
| <a name="input_all_projects"></a> [all\_projects](#input\_all\_projects) | Whether created agency roles are applied to all projects including future projects. | `bool` | `true` | no |

## Outputs

No outputs.
<!-- END_TF_DOCS -->
