locals {
  name        = var.use_name_prefix ? null : var.name
  name_prefix = var.use_name_prefix ? "${var.prefix}-" : null
}
resource "aws_db_option_group" "option_group" {
  count = var.create ? 1 : 0

  name                     = local.name
  name_prefix              = local.name_prefix
  option_group_description = var.option_group_description
  engine_name              = var.engine_name
  major_engine_version     = var.major_engine_version

  dynamic "option" {
    for_each = var.option
    content {
      option_name = option.value.option_name
    }
  }

  timeouts {
    delete = lookup(var.timeouts, "delete", null)
  }

  tags = merge(
    var.tags,
    {
      "Name" = format("%s%s", local.name_prefix, var.name)
    },
  )
}
