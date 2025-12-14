module "newrelic_alerts" {
  source = "./modules/alerts"


  newrelic_api_key = var.NEW_RELIC_API_KEY
  # api_key          = var.newrelic_api_key
  account_id          = var.NEW_RELIC_ACCOUNT_ID 
  newrelic_account_id = var.NEW_RELIC_ACCOUNT_ID 
  policy_name         = var.policy_name
  alert_conditions    = var.alert_conditions
}
