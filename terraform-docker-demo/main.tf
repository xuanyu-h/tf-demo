terraform {
  required_providers {
    docker = {
      source  = "kreuzwerker/docker"
      version = "~> 2.14.0"
    }
  }
}

provider "docker" {}

resource "docker_container" "nginx" {
  image = docker_image.nginx.latest
  name  = "local-nginx"

  ports {
    internal = 80
    external = 8888
  }
}


# resource "docker_network" "local" {
#   name = "local"
# }

# resource "docker_container" "mysql" {
#   image = docker_image.mysql.latest
#   name  = "local-mysql"
#   env   = ["MYSQL_ROOT_PASSWORD=root"]

#   volumes {
#     container_path = "/var/lib/mysql"
#     host_path      = pathexpand("~/.data/local/mysql")
#   }

#   ports {
#     internal = 3306
#     external = 3306
#   }

#   networks_advanced {
#     name = docker_network.local.name
#   }
# }

# resource "docker_container" "postgresql" {
#   image = docker_image.postgresql.latest
#   name  = "local-postgresql"
#   env   = ["POSTGRES_PASSWORD=postgres"]

#   volumes {
#     container_path = "/var/lib/postgresql/data"
#     host_path      = pathexpand("~/.data/local/pg")
#   }

#   ports {
#     internal = 5432
#     external = 5432
#   }

#   networks_advanced {
#     name = docker_network.local.name
#   }
# }

# resource "docker_container" "redis" {
#   image = docker_image.redis.latest
#   name  = "local-redis"

#   volumes {
#     container_path = "/data"
#     host_path      = pathexpand("~/.data/local/redis")
#   }

#   ports {
#     internal = 6379
#     external = 6379
#   }

#   networks_advanced {
#     name = docker_network.local.name
#   }
# }
