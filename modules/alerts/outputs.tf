output "policy_id" {
  value = newrelic_alert_policy.this.id
}

output "condition_ids" {
  value = {
    for k, v in newrelic_nrql_alert_condition.this :
    k => v.id
  }
}
