variable "newrelic_account_id" {
  type = number
}

variable "newrelic_api_key" {
  type      = string
  sensitive = true
}


variable "policy_name" {
  type = string
}

variable "alert_conditions" {
  description = "Map of NRQL alert conditions"
  type = map(object({
    name               = string
    description        = string
    target_entity      = string
    nrql_query         = string
    critical_threshold = number
    warning_threshold  = number
  }))
}
