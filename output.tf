#output 
output "content_from_f1" {
  value = local_file.f1.content
}

output "content_from_fi2" {
  value = local_file.f2.content
}