# ---------------------------------------------------------------------------------------------------------------------
# REQUIRED PARAMETERS
# These parameters must be supplied when consuming this module.
# ---------------------------------------------------------------------------------------------------------------------

variable "project_id" {
  description = "Project ID"
  type        = "string"
}

variable "account_id" {
  description = "The service account ID. Changing this forces a new service account to be created."
  type        = "string"
}

variable "display_name" {
  description = "The display name for the service account. Can be updated without creating a new resource."
  default     = "Managed-by-Terraform"
}

variable "roles" {
  type        = "list"
  description = "The roles that will be granted to the account."

  default = []
}

# ---------------------------------------------------------------------------------------------------------------------
# OPTIONAL PARAMETERS
# These parameters have reasonable defaults.
# ---------------------------------------------------------------------------------------------------------------------

