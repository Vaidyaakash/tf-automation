policy_name = "terraform-automation-v2"

alert_conditions = {
  condition_1 = {
    name               = "High Transaction Duration - Critical"
    description        = "Transactions taking too long"
    query              = "SELECT average(duration) FROM Transaction WHERE name LIKE '%api%'"
    # nrql_query         = "SELECT average(duration) FROM Transaction WHERE appName = 'Your App'"
    critical_threshold = 5.5
    warning_threshold  = 3.5
  }

  condition_2 = {
    name               = "High Transaction Duration - API"
    description        = "API latency is high"
    query              = "SELECT average(duration) FROM Transaction WHERE name LIKE '%api%'"
    # nrql_query         = "SELECT average(duration) FROM Transaction WHERE name LIKE '%api%'"
    critical_threshold = 4.0
    warning_threshold  = 2.5
  }
}
