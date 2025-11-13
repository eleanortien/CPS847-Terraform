terraform {
  required_providers {
    github = {
      source  = "integrations/github"
      version = "~> 6.0"
    }
  }
}

provider "github" {
  token = var.github_token
}

resource "github_repository" "CPS847_example_tf_repo" {
  name        = "CPS847_example_terraform_repo"
  description = "My awesome codebase"

  visibility = "public"
}