output "nginx_public_ip" {
  value = module.instances.nginx_public_ip
}
output "db_private_ip" {
  value = module.instances.db_private_ip
}
output "key_pair_path" {
  value = module.key_pair.private_key_path
}
