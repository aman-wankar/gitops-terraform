module "vpc" {
  source       = "github.com/aman-wankar/terraform-gcp-vpc"
  project_id   = "gitops-infra-qa"
  network_name = "global-vpc"

  subnets = [
    {
      name    = "subnet-mumbai"
      ip_cidr = "10.10.0.0/24"
      region  = "asia-south1"
    },
    {
      name    = "subnet-tokyo"
      ip_cidr = "10.20.0.0/24"
      region  = "asia-northeast1"
    },
    {
      name    = "subnet-iowa"
      ip_cidr = "10.30.0.0/24"
      region  = "us-central1"
    }
  ]
}
