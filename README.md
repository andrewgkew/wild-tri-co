# Wild Tri Co

[![Terraform](https://github.com/andrewgkew/wild-tri-co/actions/workflows/deploy.yaml/badge.svg)](https://github.com/andrewgkew/wild-tri-co/actions/workflows/deploy.yaml)
[![Terraform](https://github.com/andrewgkew/wild-tri-co/actions/workflows/deploy-apis.yaml/badge.svg)](https://github.com/andrewgkew/wild-tri-co/actions/workflows/deploy-apis.yaml)
![GitHub License](https://img.shields.io/github/license/andrewgkew/wild-tri-co)
![GitHub last commit](https://img.shields.io/github/last-commit/andrewgkew/wild-tri-co)
![GitHub issues](https://img.shields.io/github/issues/andrewgkew/wild-tri-co)
![GitHub pull requests](https://img.shields.io/github/issues-pr/andrewgkew/wild-tri-co)

<p align="center" width="100%">
    <img src="assets/hero.svg">
</p>

A triathlon business platform combining APIs (OpenAPI specs + infrastructure), event & community services, and a developer portal — all in one ecosystem.

This repository houses:

- Terraform IaC
    - Under the `portal/` directory to provision a Konnect Developer portal
    - Under the `apis/` directory to onboard APIs and markdown docs to the Developer Portal
- GitHub Actions workflows for CI/CD for both projects

---

## ⚡ Live Demo
You can access a live demo of the Konnect Develoepr Portal by navigating to this link

[Wild Tri Co Developer Portal](https://developer.wildtrico.com/)

You will have to register and account and confirm your email, but then you will have access to view everything on the site

## 🚀 Getting Started (Developer Portal Local Development)

1. Clone the repository:

   ```bash
   git clone https://github.com/andrewgkew/wild-tri-co.git
   cd wild-tri-co
   ```

2. To provision a Developer Portal:

   ```bash
   cd portal
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
   terraform plan -var-file=example.tfvars
   terraform apply -var -file=example.tfvars
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

- `AWS_ACCESS_KEY_ID` - IAM access key to write terraform state to S3
- `AWS_SECRET_ACCESS_KEY` - IAM secret key to write terraform state to S3
- `AWS_REGION` - The default AWS region
- `TF_STATE_BUCKET` - The S3 bucket name already created in AWS
- `TF_STATE_KEY` - The terraform state key which defines the S3 object name i.e `developer-portal/terraform.tfstate`
- `KONNECT_TOKEN` - The Konnect System account token used to provision Konnect Developer portal

---

## 📦 API Specs & Docs

The second terraform project under `apis/` gives you ability to onboard APIs and mardown docs to the already created Konnect Developer Portal.

The project has an internal terraform module that allows you to create:

1. An API with given name and description
2. Set the current version of the API
3. Add custom attributes that are used for filtering APIs on the portal
4. Set the visibility of the API to private or public
5. Create multiple versions of the API if you are managing more than 1 version of the API
6. Create markdown docs that are linked to the API and visible as part of the API Renderer

To onboard APIs you can easily define all these in your tfvars file. Currently the project only allows local based OAS and markdown docs
but this can be extended to allow pulling of the files from a URL instead.

Example tfvars file

```yaml
api_config = {
  "analytics" = {
    current_version = "1.0.0"
    api_slug        = "analytics"
    api_name        = "Triathlon Business Reports and Insights API"
    api_description = "API for generating reports and insights on athlete performance and business operations for a triathlon business."
    api_visibility  = "private"
    labels = {}
    attributes = {
      domain            = ["Business"]
      use_case          = ["Insights"]
      audience          = ["Admin"]
      data_type         = ["Reports"]
      business_function = ["Analytics"]
      workflow_stage    = ["Analyze"]
      integration_type  = ["Analytics"]
      access_level      = ["Internal"]
      complexity_level  = ["Analytics APIs"]
      industry_focus    = ["Sports Tech"]
    }
    versions = [
      {
        version  = "1.0.0"
        location = "./specs/analytics-api.yaml"
        type     = "yaml"
      }
    ]
    api_docs = {
    "overview" = {
        title = "Overview"
        location = "./docs/analytics/overview.md"
      }
      "quickstart" = {
        title = "Quickstart"
        location = "./docs/analytics/quickstart.md"
      }
      "authentication" = {
        title = "Authentication"
        location = "./docs/analytics/authentication.md"
      }
      "changelog" = {
        title = "Changelog"
        location = "./docs/analytics/changelog.md"
      }
      "errors" = {
        title = "Errors"
        location = "./docs/analytics/errors.md"
      }
      "recipes" = {
        title = "Recipes"
        location = "./docs/analytics/recipes.md"
      }
      "business-operations" = {
        title = "Business Operations"
        location = "./docs/analytics/business-operations.md"
      }
      "athlete-performance" = {
        title = "Athlete Performance"
        location = "./docs/analytics/athlete-performance.md"
      }
      "pagination-and-filtering" = {
        title = "Pagination & Filtering"
        location = "./docs/analytics/pagination-and-filtering.md"
      }
    }
    portal = "Wild Tri Co."
  }
"atheletes" = {
    current_version = "1.4.0"
    api_slug        = "athlete"
    api_name        = "Athlete Management API"
    api_description = "API for managing athlete profiles and performance data."
    api_visibility  = "private"
    labels = {}
    attributes = {
      domain            = ["Athlete"]
      use_case          = ["Performance"]
      audience          = ["Athlete"]
      data_type         = ["Profiles"]
      business_function = ["Training"]
      workflow_stage    = ["Train"]
      integration_type  = ["Core System"]
      access_level      = ["Partner"]
      complexity_level  = ["Basic CRUD"]
      industry_focus    = ["Sports Tech"]
    }
    versions = [
      {
        version  = "1.4.0"
        location = "./specs/athletes-api.yaml"
        type     = "yaml"
      }
    ]
    api_docs = {
    }
    portal = "Wild Tri Co."

  }
}
```

Terraform loops over this map and auto-creates:

- `konnect_api` resources
- `konnect_api_version` resources
- `konnect_api_publication` resources
- `konnect_api_document` resources

### Publishing APIs to a portal
In order to find the portal to publish the APIs to the module will check the name of your portal that it contains the string
passed in in the `portal` field in your `tfvars` file

```yaml
data "konnect_portal" "portal" {
  filter = {
    name = {
      contains = var.portal
    }
  }
}
```

---

## 📚 Resources & References

- Terraform Docs: [Backend Configuration](https://developer.hashicorp.com/terraform/language/settings/backends)
- Konnect registration: [Register](https://cloud.konghq.com/)
- Konnect Docs: [Developer Poratal Docs](https://developer.konghq.com/dev-portal/)
- Terraform Provider: [Konnect Terraform Provider](https://registry.terraform.io/providers/Kong/konnect/latest/docs)

---

## 🔖 Contributions

Contributions are welcome! Please open issues or PRs to propose new features, fix bugs, or improve docs.

---

*Wild Tri Co — where triathlon, community, and APIs converge.*  
