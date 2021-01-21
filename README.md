# terraform-azurerm-linuxscaleset

[![Build Status](https://github.com/JamesWoolfenden/terraform-azurerm-linuxscaleset/workflows/Verify%20and%20Bump/badge.svg?branch=master)](https://github.com/JamesWoolfenden/terraform-azurerm-linuxscaleset)
[![Latest Release](https://img.shields.io/github/release/JamesWoolfenden/terraform-azurerm-linuxscaleset.svg)](https://github.com/JamesWoolfenden/terraform-azurerm-linuxscaleset/releases/latest)
[![GitHub tag (latest SemVer)](https://img.shields.io/github/tag/JamesWoolfenden/terraform-azurerm-linuxscaleset.svg?label=latest)](https://github.com/JamesWoolfenden/terraform-azurerm-linuxscaleset/releases/latest)
![Terraform Version](https://img.shields.io/badge/tf-%3E%3D0.14.0-blue.svg)
[![Infrastructure Tests](https://www.bridgecrew.cloud/badges/github/JamesWoolfenden/terraform-azurerm-linuxscaleset/cis_aws)](https://www.bridgecrew.cloud/link/badge?vcs=github&fullRepo=JamesWoolfenden%2Fterraform-azurerm-linuxscaleset&benchmark=CIS+AWS+V1.2)
[![pre-commit](https://img.shields.io/badge/pre--commit-enabled-brightgreen?logo=pre-commit&logoColor=white)](https://github.com/pre-commit/pre-commit)
[![checkov](https://img.shields.io/badge/checkov-verified-brightgreen)](https://www.checkov.io/)
[![Infrastructure Tests](https://www.bridgecrew.cloud/badges/github/jameswoolfenden/terraform-azurerm-linuxscaleset/general)](https://www.bridgecrew.cloud/link/badge?vcs=github&fullRepo=JamesWoolfenden%2Fterraform-azurerm-linuxscaleset&benchmark=INFRASTRUCTURE+SECURITY)

Terraform module -

---

It's 100% Open Source and licensed under the [APACHE2](LICENSE).

## Usage

This is just a very basic example.

Include **module.linuxscaleset.tf** this repository as a module in your existing terraform code:

```terraform
module "linuxscaleset" {
  source         = "JamesWoolfenden/linuxscaleset/azurerm"
  common_tags    = var.common_tags
  resource_group = azurerm_resource_group.example
  azurerm_subnet = azurerm_subnet.internal
}
```

<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
## Requirements

No requirements.

## Providers

| Name | Version |
|------|---------|
| azurerm | n/a |
| local | n/a |
| tls | n/a |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| admin\_username | n/a | `string` | `"adminuser"` | no |
| azurerm\_subnet | (optional) describe your variable | `any` | n/a | yes |
| common\_tags | This is to help you add tags to your cloud objects | `map(any)` | n/a | yes |
| instance\_count | n/a | `number` | `1` | no |
| os\_disk | n/a | `map(any)` | <pre>{<br>  "caching": "ReadWrite",<br>  "storage_account_type": "Standard_LRS"<br>}</pre> | no |
| resource\_group | n/a | `any` | n/a | yes |
| scaleset\_name | n/a | `string` | `"example-vmss"` | no |
| sku | n/a | `string` | `"Standard_F2"` | no |
| source\_image\_reference | n/a | `map(any)` | <pre>{<br>  "offer": "UbuntuServer",<br>  "publisher": "Canonical",<br>  "sku": "16.04-LTS",<br>  "version": "latest"<br>}</pre> | no |
| subnet | (optional) describe your variable | `map(any)` | <pre>{<br>  "name": "backend",<br>  "resource_group_name": "networking",<br>  "virtual_network_name": "production"<br>}</pre> | no |

## Outputs

| Name | Description |
|------|-------------|
| scale\_set | n/a |

<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->

## Related Projects

Check out these related projects.

- [terraform-aws-s3](https://github.com/jameswoolfenden/terraform-aws-s3) - S3 buckets

## Help

**Got a question?**

File a GitHub [issue](https://github.com/JamesWoolfenden/terraform-azurerm-linuxscaleset/issues).

## Contributing

### Bug Reports & Feature Requests

Please use the [issue tracker](https://github.com/JamesWoolfenden/terraform-azurerm-linuxscaleset/issues) to report any bugs or file feature requests.

## Copyrights

Copyright © 2019-2021 James Woolfenden

## License

[![License](https://img.shields.io/badge/License-Apache%202.0-blue.svg)](https://opensource.org/licenses/Apache-2.0)

See [LICENSE](LICENSE) for full details.

Licensed to the Apache Software Foundation (ASF) under one
or more contributor license agreements. See the NOTICE file
distributed with this work for additional information
regarding copyright ownership. The ASF licenses this file
to you under the Apache License, Version 2.0 (the
"License"); you may not use this file except in compliance
with the License. You may obtain a copy of the License at

<https://www.apache.org/licenses/LICENSE-2.0>

Unless required by applicable law or agreed to in writing,
software distributed under the License is distributed on an
"AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY
KIND, either express or implied. See the License for the
specific language governing permissions and limitations
under the License.

### Contributors

[![James Woolfenden][jameswoolfenden_avatar]][jameswoolfenden_homepage]<br/>[James Woolfenden][jameswoolfenden_homepage]

[jameswoolfenden_homepage]: https://github.com/jameswoolfenden
[jameswoolfenden_avatar]: https://github.com/jameswoolfenden.png?size=150
[github]: https://github.com/jameswoolfenden
[linkedin]: https://www.linkedin.com/in/jameswoolfenden/
[twitter]: https://twitter.com/JimWoolfenden
[share_twitter]: https://twitter.com/intent/tweet/?text=terraform-azurerm-linuxscaleset&url=https://github.com/JamesWoolfenden/terraform-azurerm-linuxscaleset
[share_linkedin]: https://www.linkedin.com/shareArticle?mini=true&title=terraform-azurerm-linuxscaleset&url=https://github.com/JamesWoolfenden/terraform-azurerm-linuxscaleset
[share_reddit]: https://reddit.com/submit/?url=https://github.com/JamesWoolfenden/terraform-azurerm-linuxscaleset
[share_facebook]: https://facebook.com/sharer/sharer.php?u=https://github.com/JamesWoolfenden/terraform-azurerm-linuxscaleset
[share_email]: mailto:?subject=terraform-azurerm-linuxscaleset&body=https://github.com/JamesWoolfenden/terraform-azurerm-linuxscaleset
