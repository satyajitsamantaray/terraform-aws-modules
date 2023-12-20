resource "aws_kms_key" "kms_key"{
    count       = var.create ? 1 : 0

    description                        = var.description
    key_usage                          = var.key_usage
    customer_master_key_spec           = var.customer_master_key_spec
    #policy                             = var.policy
    bypass_policy_lockout_safety_check = var.bypass_policy_lockout_safety_check
    deletion_window_in_days            = var.deletion_window_in_days
    is_enabled                         = var.is_enabled
    enable_key_rotation                = var.enable_key_rotation

    tags = merge(
        var.tags,{},
        {
        "Name" = format("%s-%s", var.prefix, var.kms_key_name)
        }
    )
}
