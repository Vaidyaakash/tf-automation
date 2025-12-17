# terraform {
#   required_providers {
#     newrelic = {
#       source  = "newrelic/newrelic"
#       version = "3.76.3"
#     }
#   }
# }

terraform {
  # required_version = ">= 1.5.0"

  required_providers {
    newrelic = {
      source  = "newrelic/newrelic"
      version = "~> 3.30"
    }
  }
}

# Configure the New Relic provider
provider "newrelic" {
  account_id = var.newrelic_account_id
  api_key    = var.newrelic_api_key
  # region     = "US"
}
