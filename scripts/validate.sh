#!/usr/bin/env bash
set -euo pipefail
terraform fmt -check -recursive terraform
for d in terraform/network terraform/identity terraform/policy; do (cd "$d" && terraform init -backend=false -input=false >/dev/null && terraform validate); done
