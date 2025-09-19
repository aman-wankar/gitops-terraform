terraform {
  backend "gcs" {
    bucket = "gitops-infra-tfstate-qa"
    prefix = "terraform/state"
  }
}
