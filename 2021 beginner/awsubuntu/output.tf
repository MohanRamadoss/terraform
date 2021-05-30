output "instance_ids" {
  value = [for b in aws_instance.demo : b.id]
}