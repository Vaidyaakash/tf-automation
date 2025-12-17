# variable "account_id" {
#   type = number
# }

variable "policy_name" {
  type = string
}

# variable "alert_conditions" {
#   type = map(object({
#     name               = string
#     description        = string
#     query              = string
#     critical_threshold = number
#     warning_threshold  = number
#   }))
# }
variable "account_id" {
  type = number
}

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