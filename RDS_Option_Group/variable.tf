variable "create" {
  type    = bool
  default = true
}
variable "name" {
  type    = string
  default = ""
}
variable "use_name_prefix" {
  type    = bool
  default = true
}
variable "engine_name" {
  type    = string
  default = ""
}
variable "prefix" {
  type    = string
  default = ""
}

variable "major_engine_version" {
  type    = string
  default = null
}
variable "option" {
  type    = list(string)
  default = []
}
variable "timeouts" {
  type    = map(string)
  default = {}
}

variable "option_group_description" {
  type    = string
  default = null
}

variable "tags" {
  type    = map(string)
  default = {}
}
