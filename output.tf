#outputs.tf
output "security_group_id" {
  value       = aws_security_group.rds_sg.id
}
output "db_instance_endpoint" {
  value       = aws_db_instance.myinstance.endpoint
}

output "db_instance_arn" {
  value = aws_db_instance.myinstance.arn
}