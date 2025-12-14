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
