output "id" {
  value = element(concat(aws_instance.bastion.*.id, [""]), 0)
}
output "arn" {
  value = element(concat(aws_instance.bastion.*.arn, [""]), 0)
}
output "capacity_reservation_specification" {
  value = element(concat(aws_instance.bastion.*.capacity_reservation_specification, [""]), 0)
}
output "instance_state" {
  value = element(concat(aws_instance.bastion.*.instance_state, [""]), 0)
}
output "primary_network_interface_id" {
  value = element(concat(aws_instance.bastion.*.primary_network_interface_id, [""]), 0)
}
output "private_dns" {
  value = element(concat(aws_instance.bastion.*.private_dns, [""]), 0)
}
output "public_dns" {
  value = element(concat(aws_instance.bastion.*.public_dns, [""]), 0)
}
output "public_ip" {
  value = element(concat(aws_instance.bastion.*.public_ip, [""]), 0)
}
output "tags_all" {
  value = element(concat(aws_instance.bastion.*.tags_all, [""]), 0)
}
output "outpost_arn" {
  value = element(concat(aws_instance.bastion.*.outpost_arn, [""]), 0)
}
output "private_ip" {
   value = element(concat(aws_instance.bastion.*.private_ip, [""]), 0)
}
