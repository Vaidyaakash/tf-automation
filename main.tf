resource "newrelic_alert_policy" "foo" {
  name                = var.policyName
  incident_preference = var.incident_preference
}