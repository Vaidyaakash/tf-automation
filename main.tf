module "newrelic_alerts_1" {
  source = "./modules/alerts"

  name               = "High Transaction Duration - Critical"
  description        = "Transactions taking too long"
  query              = "SELECT average(duration) FROM Transaction WHERE name LIKE '%api%'"
  critical_threshold = 5.5
  warning_threshold  = 3.5
  policy_name        = "automation-test-policy"
}

module "newrelic_alerts_2" {
  source = "./modules/alerts"

  name               = "High Transaction Duration - Critical"
  description        = "Transactions taking too long"
  query              = "SELECT average(duration) FROM Transaction WHERE name LIKE '%api%'"
  critical_threshold = 5.5
  warning_threshold  = 3.5
  policy_name        = "automation-test-policy2"
}
