
Info
Edit
No lines are selected.
output "aws_db_option_group_id" {
  value = element(concat(aws_db_option_group.option_group.*.id, [""]), 0)
}
output "aws_db_option_group_arn" {
  value = element(concat(aws_db_option_group.option_group.*.arn, [""]), 0)
}
output "tags_all" {
  value = element(concat(aws_db_option_group.option_group.*.tags_all, [""]), 0)
}
