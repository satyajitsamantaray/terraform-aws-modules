variable "create"{
    type    = bool
    default = true
}
variable "description"{
    type    = string
    default = ""
}
variable "prefix" {
  type    = string
  default = ""
}
variable "kms_key_name" {
  type    = string
  default = ""
}
variable "key_usage"{
    type    = string
    default = "ENCRYPT_DECRYPT"
}
variable "customer_master_key_spec"{
    type    = string
    default = "SYMMETRIC_DEFAULT"
}

variable "policy"{
    type    = string
    default = null
}
variable "bypass_policy_lockout_safety_check"{
    type    = bool
    default = false
}
variable "deletion_window_in_days"{
    type    = number
    default = 30
}
variable "is_enabled"{
    type    = bool
    default = true
}
variable "enable_key_rotation"{
    type    = bool
    default = false
}
variable "tags"{
    type    = map(string)
    default = {}
}
