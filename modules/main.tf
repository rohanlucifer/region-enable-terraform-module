variable "region_name" {
  description = "The name of the AWS region."
  default     = null
}

variable "enabled" {
  description = "Whether the resource should be enabled."
  default     = null
}

resource "aws_account_region" "example" {
  count       = var.region_name != null && var.enabled != null ? 1 : 0
  region_name = var.region_name
  enabled     = var.enabled
}
