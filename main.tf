resource "random_id" "name" {
  byte_length = 8
}

output "name" {
  value = random_id.name.hex
  
}