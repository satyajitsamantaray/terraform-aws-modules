output "aws_kms_key_id"{
    value = element(concat(aws_kms_key.kms_key.*.id, [""]), 0)
}
output "aws_kms_key_arn"{
    value = element(concat(aws_kms_key.kms_key.*.arn, [""]), 0)
}
output "tags_all"{
    value = element(concat(aws_kms_key.kms_key.*.tags_all, [""]), 0)
}
