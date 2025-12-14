variable "policyName" {
  type        = any
  description = "policyName"
}

variable "incident_preference" {
  type        = any
  description = "incident preference"
}

variable "newrelic_api_key" {
  type      = string
  sensitive = true
}

variable "newrelic_account_id" {
  type = number
}
