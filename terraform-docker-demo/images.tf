resource "docker_image" "nginx" {
  name         = "nginx:latest"
  keep_locally = true
}

# resource "docker_image" "mysql" {
#   name         = "mysql:latest"
#   keep_locally = true
# }

# resource "docker_image" "postgresql" {
#   name         = "postgres:latest"
#   keep_locally = true
# }

# resource "docker_image" "redis" {
#   name         = "redis:latest"
#   keep_locally = true
# }
