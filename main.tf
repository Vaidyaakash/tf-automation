module "newrelic_alerts" {
  source = "./modules/alerts"

  account_id       = var.newrelic_account_id
  policy_name      = var.policy_name
  alert_conditions = var.alert_conditions
}
