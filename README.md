# Wild Tri Co

[![Terraform](https://github.com/andrewgkew/wild-tri-co/actions/workflows/deploy.yaml/badge.svg)](https://github.com/andrewgkew/wild-tri-co/actions/workflows/deploy.yaml)
![GitHub License](https://img.shields.io/github/license/andrewgkew/wild-tri-co)
![GitHub last commit](https://img.shields.io/github/last-commit/andrewgkew/wild-tri-co)
![GitHub issues](https://img.shields.io/github/issues/andrewgkew/wild-tri-co)
![GitHub pull requests](https://img.shields.io/github/issues-pr/andrewgkew/wild-tri-co)

<p align="center" width="100%">
    <img src="assets/hero.svg">
</p>

A triathlon business platform combining APIs (OpenAPI specs + infrastructure), event & community services, and a developer portal — all in one ecosystem.

This repository houses:

- OpenAPI / OAS spec files in the `specs/` directory
- Terraform infrastructure under the `terraform/` directory
- GitHub Actions workflows for CI/CD

---

## 🚀 Getting Started (Local Development)

1. Clone the repository:

   ```bash
   git clone https://github.com/andrewgkew/wild-tri-co.git
   cd wild-tri-co
   ```

2. Navigate to Terraform:

   ```bash
   cd terraform
   ```

3. Configure your backend and secrets. For example, use an S3 backend and set default variables in tfvars file:

   ```hcl
   # Example example.tfvars
   konnect_system_account_access_token=spat_xxxx
   ```

4. Initialize Terraform:

   ```bash
   terraform init \
     -backend-config="bucket=YOUR_S3_BUCKET" \
     -backend-config="key=path/to/terraform.tfstate" \
     -backend-config="region=YOUR_AWS_REGION"
   ```

5. Plan & Apply:

   ```bash
   terraform plan
   terraform apply
   ```

---

## 🛠️ GitHub Actions / CI Setup

The CI pipeline will:

- Checkout code
- Set up Terraform
- Configure AWS credentials (for S3 backend)
- Inject `KONNECT_TOKEN` secret as `TF_VAR_konnect_system_account_access_token`
- Run `terraform init`, `plan`, and on `main` branch, `apply`

Make sure you add the following secrets in your GitHub repo settings:

- `AWS_ACCESS_KEY_ID`
- `AWS_SECRET_ACCESS_KEY`
- `AWS_REGION`
- `TF_STATE_BUCKET`
- `TF_STATE_KEY`
- `KONNECT_TOKEN`

---

## 📦 API Specs & Metadata

Each OpenAPI spec file (YAML) supports **custom metadata** via an `x-konnect` block (usually nested under `info`) to capture:

- `slug`
- `attributes` (domain, use_case, audience, etc.)

Example:

```yaml
openapi: 3.1.0
info:
  name: Analytics
  title: Triathlon Business Reports and Insights API
  version: 1.0.0
  description: API for generating reports and insights on athlete performance and business operations.
  x-konnect:
    slug: analytics-v1
    attributes:
      domain: ["business"]
      use_case: ["insights"]
      audience: ["admin","coach"]
      data_type: ["reports"]
      business_function: ["analytics"]
      workflow_stage: ["analyze"]
      integration_type: ["analytics","reporting"]
      access_level: ["internal"]
      complexity_level: ["analytics"]
      industry_focus: ["sports tech","ops"]
servers:
  - url: https://api.example.com/v1
    description: Production server
paths:
  # ... endpoints, etc.
```

Terraform loops over the specs directory, decodes each spec, and auto-creates:

- `konnect_api` resources
- `konnect_api_publication` resources

It pulls metadata from both `info` and `x-konnect`.

---

## 📚 Resources & References

- Terraform Docs: [Backend Configuration](https://developer.hashicorp.com/terraform/language/settings/backends)
- OpenAPI Extensions (`x-` fields) conventions
- GitHub Actions / `hashicorp/setup-terraform` action

---

## 🔖 Contributions

Contributions are welcome! Please open issues or PRs to propose new features, fix bugs, or improve docs.

---

*Wild Tri Co — where triathlon, community, and APIs converge.*  
