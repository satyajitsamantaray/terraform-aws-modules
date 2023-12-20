output "password_secretsmanager_secret_id" {
  value = element(concat(aws_secretsmanager_secret.secret.*.id, [""]), 0)
}
output "password_secretsmanager_secret_arn" {
  value = element(concat(aws_secretsmanager_secret.secret.*.arn, [""]), 0)
}
output "password_secretsmanager_secret_version_id" {
  value = element(concat(aws_secretsmanager_secret_version.secret_version.*.id, [""]), 0)
}
output "password_secretsmanager_secret_version_arn" {
  value = element(concat(aws_secretsmanager_secret_version.secret_version.*.arn, [""]), 0)
}
