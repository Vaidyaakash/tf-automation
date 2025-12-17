terraform {
  required_providers {
    newrelic = {
      source = "newrelic/newrelic"
      version = "3.76.3"
    }
  }
}

# Configure the New Relic provider
# provider "newrelic" {
#   account_id = var.NEW_RELIC_ACCOUNT_ID
#   api_key    = var.NEW_RELIC_API_KEY
#   region     = "US"
# }
