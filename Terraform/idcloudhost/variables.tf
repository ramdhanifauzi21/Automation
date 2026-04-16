variable "auth_token" {
  description = "API Token IDCloudHost"
  type        = string
  sensitive   = true
}

variable "billing_account_id" {
  description = "Billing Account ID IDCloudHost"
  type        = number
}

variable "password" {
  description = "Password untuk kedua VM"
  type        = string
  sensitive   = true
}
