variable "account_id" {
  type = number
}

variable "policy_name" {
  type = string
}

variable "alert_conditions" {
  type = map(object({
    name               = string
    description        = string
    target_entity      = string
    nrql_query         = string
    critical_threshold = number
    warning_threshold  = number
  }))
}
variable "newrelic_account_id" {
  type = number
}

variable "newrelic_api_key" {
  type      = string
  sensitive = true
}