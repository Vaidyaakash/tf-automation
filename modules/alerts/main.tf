resource "newrelic_alert_policy" "this" {
  name = var.policy_name
}


resource "newrelic_nrql_alert_condition" "this" {
  for_each = var.alert_conditions

  account_id                   = var.NEW_RELIC_ACCOUNT_ID 
  policy_id                    = newrelic_alert_policy.this.id
  type                          = "static"
  name                          = each.value.name
  description                   = each.value.description
  title_template                = "Issue in environment: {{ tags.environment }}"
  target_entity                 = each.value.target_entity
  runbook_url                   = "https://www.example.com"
  enabled                       = true
  violation_time_limit_seconds  = 3600

  fill_option                   = "static"
  fill_value                    = 1.0
  aggregation_window            = 60
  aggregation_method            = "event_flow"
  aggregation_delay             = 120
  expiration_duration           = 120
  open_violation_on_expiration  = true
  close_violations_on_expiration = true
  ignore_on_expected_termination = true
  slide_by                      = 30

  nrql {
    query = each.value.nrql_query
  }

  critical {
    operator              = "above"
    threshold             = each.value.critical_threshold
    threshold_duration    = 300
    threshold_occurrences = "ALL"
  }

  warning {
    operator              = "above"
    threshold             = each.value.warning_threshold
    threshold_duration    = 600
    threshold_occurrences = "ALL"
  }
}