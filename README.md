# NovaTech landing zone

Terraform for NovaTech Financial Group's Azure landing zone: hub network, identity and policy.

## Layout

| Folder | What lives there |
| --- | --- |
| `terraform/network/` | Hub VNet, subnets, firewall, Bastion |
| `terraform/identity/` | Managed identities and role assignments |
| `terraform/policy/` | Azure Policy assignments |
| `terraform/environments/` | Per-environment values |

## Before you open a pull request

Run `./scripts/validate.sh` from the repo root. It runs `terraform fmt -check` and `terraform validate`.
Pull requests that fail it will not be reviewed.
