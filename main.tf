module "newrelic_alerts" {
  source = "./modules/alerts"


  NEW_RELIC_API_KEY = var.NEW_RELIC_API_KEY
  # api_key          = var.newrelic_api_key
  NEW_RELIC_ACCOUNT_ID = var.NEW_RELIC_ACCOUNT_ID
  # newrelic_account_id = var.NEW_RELIC_ACCOUNT_ID 
  policy_name      = var.policy_name
  alert_conditions = var.alert_conditions
}
