#variables of rds master user password
variable "pwd_length" {
  type        = number
  description = "The length of the rds password "
  default     = 16
}
variable "pwd_lower" {
  type        = bool
  description = "Include lowercase alphabet characters in the result "
  default     = true
}
variable "pwd_upper" {
  type        = bool
  description = "Include uppercase alphabet characters in the result "
  default     = true
}
variable "pwd_special" {
  type        = bool
  description = "Include special characters in the result "
  default     = true
}

variable "pwd_number" {
  type        = bool
  description = " Include numeric characters in the result "
  default     = true
}
variable "pwd_min_lower" {
  type        = number
  description = "Minimum number of lowercase alphabet characters in the result"
  default     = 4
}
variable "pwd_min_upper" {
  type        = number
  description = "Minimum number of uppercase alphabet characters in the result"
  default     = 4
}
variable "pwd_min_numeric" {
  type        = number
  description = "Minimum number of numeric characters in the result"
  default     = 4
}
variable "pwd_min_special" {
  type        = number
  description = "Minimum number of special characters in the result"
  default     = 2
}

#variables of aws secret 
variable "secret_name" {
  type = string
}
variable "prefix" {
  type        = string
  description = "Unique name beginning with the specified prefix "
  default     = ""
}
variable "secret_description" {
  type        = string
  description = "Unique name beginning with the specified prefix "
  default     = "aruba"
}
#variables of aws secret version
variable "master_user" {
  type        = string
  description = "RDS master username "
  default     = "aruba_user"
}
variable "secret_kms_key_id" {
  type        = string
  description = "RDS master username "
  default     = ""
}

variable "recovery_window_in_days" {
  type        = string
  description = "RDS master username "
  default     = ""
}

variable "tags" {
  type    = map(string)
  default = {}
}
