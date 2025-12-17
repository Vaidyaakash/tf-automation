resource "newrelic_alert_policy" "this" {
  name = var.policy_name
}

resource "newrelic_nrql_alert_condition" "foo" {
  # for_each = var.alert_conditions

  type                         = "baseline"
  account_id                   = var.account_id
  name                         = var.name
  policy_id                    = newrelic_alert_policy.this.id
  description                  = var.description
  enabled                      = true
  runbook_url                  = "https://www.example.com"
  violation_time_limit_seconds = 3600
  aggregation_method           = "event_flow"
  aggregation_delay            = 120
  slide_by                     = 30

  # baseline type only
  baseline_direction = "upper_only"
  signal_seasonality = "weekly"

  nrql {
    query = var.query
  }

  critical {
    operator              = "above"
    threshold             = var.critical_threshold
    threshold_duration    = 300
    threshold_occurrences = "all"
  }

  warning {
    operator              = "above"
    threshold             = var.warning_threshold
    threshold_duration    = 600
    threshold_occurrences = "all"
  }
}


resource "newrelic_entity_tags" "my_condition_entity_tags" {
  guid = newrelic_nrql_alert_condition.foo.entity_guid

  tag {
    key = "my-tag"
    values = ["lenovo-laptop"]
  }

}