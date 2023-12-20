#resource to create a random password to store in secrets manager
resource "random_password" "master_pwd" {
  length           = var.pwd_length
  lower            = var.pwd_lower
  upper            = var.pwd_upper
  special          = var.pwd_special
  number           = var.pwd_number
  min_lower        = var.pwd_min_lower
  min_numeric      = var.pwd_min_numeric
  min_special      = var.pwd_min_special
  min_upper        = var.pwd_min_upper
  override_special = "!#$%&*()-_=+[]{}<>:?"
}

#creates a aws secret 
resource "aws_secretsmanager_secret" "secret" {
  //name_prefix = var.secret_name_prefix
  name                    = var.secret_name
  description             = var.secret_description
  kms_key_id              = var.secret_kms_key_id
  recovery_window_in_days = var.recovery_window_in_days
  tags = merge(
    var.tags,
    {
      "Name" = format("%s%s", var.prefix, var.secret_name)

    },
  )
}

locals {
  secret = {
    "username" = var.master_user
    "password" = random_password.master_pwd.result
  }
}

#creates a aws secret version
resource "aws_secretsmanager_secret_version" "secret_version" {
  secret_id     = aws_secretsmanager_secret.secret.id
  secret_string = jsonencode(local.secret)
}
