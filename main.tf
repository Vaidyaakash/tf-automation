module "newrelic_alerts" {
  source = "./modules/alerts"


  newrelic_api_key = var.newrelic_api_key
  # api_key          = var.newrelic_api_key
  account_id          = var.newrelic_account_id
  newrelic_account_id = var.newrelic_account_id
  policy_name         = var.policy_name
  alert_conditions    = var.alert_conditions
}
