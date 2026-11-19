# Day 2 — Terraform Fundamentals

## Project Overview

Practiced Infrastructure as Code (IaC) using Terraform v1.17.1 on a Windows computer.

This project demonstrates how Terraform configuration files define resources, how Terraform plans changes, and how state tracks the resulting infrastructure.

**Environment:** Windows PowerShell  
**Terraform Version:** 1.17.1  
**Project Type:** Local Terraform practice

## Tools and Technologies

- Terraform CLI
- Windows PowerShell
- HashiCorp Configuration Language (HCL)
- Terraform state management

## Terraform Configuration

Created a `main.tf` file containing:

```hcl
terraform {
  required_version = ">= 1.5.0"
}

variable "project_name" {
  type    = string
  default = "aws-bootcamp"
}

resource "terraform_data" "practice" {
  input = var.project_name
}

output "project_name" {
  value = terraform_data.practice.output
}
```

## Commands Practiced

### 1. Terraform Plan

```powershell
terraform plan
```

Reviewed Terraform's proposed changes before applying the configuration.

**Initial result:**

```text
Plan: 1 to add, 0 to change, 0 to destroy.
```

### 2. Terraform Apply

```powershell
terraform apply
```

Approved the configuration changes.

**Result:**

```text
Apply complete! Resources: 1 added, 0 changed, 0 destroyed.
```

**Output:**

```text
project_name = "aws-bootcamp"
```

### 3. Verify Terraform State

Ran Terraform plan again after applying the configuration.

**Result:**

```text
No changes. Your infrastructure matches the configuration.
```

This demonstrated how Terraform detects whether its managed resources match the configuration.

## Key Concepts Learned

- **Infrastructure as Code:** Defining infrastructure and resources through configuration files.
- **Terraform Plan:** Previewing proposed changes before applying them.
- **Terraform Apply:** Applying the desired configuration.
- **Terraform State:** Tracking resources managed by Terraform.
- **Idempotency:** An unchanged configuration produces no additional planned changes.

## Project Scope

This was a local Terraform exercise using the built-in `terraform_data` resource.

**No AWS resources were provisioned through Terraform in this project.**

## Security Notes

Terraform state files may contain sensitive information and should not be committed to a public GitHub repository.

Files such as `terraform.tfstate`, `terraform.tfstate.backup`, and `.terraform/` are excluded from the portfolio.
