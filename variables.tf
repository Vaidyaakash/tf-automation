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

# variable "name" {
#   description = "Map of NRQL alert conditions"
#   type = map(object({
#     name               = string
#     description        = string
#     query              = string
#     critical_threshold = number
#     warning_threshold  = number
#   }))
# }

variable "name" {
  type = any
}

variable "description" {
  type = any
}

variable "query" {
  type = any
}

variable "critical_threshold" {
  type = any
}

variable "warning_threshold" {
  type = any
}