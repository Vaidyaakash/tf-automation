# terraform {
#   backend "s3" {
#     bucket         = "terraform-newrelic-state-3679990"
#     key            = "newrelic/terraform.tfstate"
#     region         = "us-east-1"
#     dynamodb_table = "terraform-locks"
#     encrypt        = true
#   }
# }