terraform {
    required_providers {
        docker = {
            source = "kreuzwerker/docker"
            version = "2.15.0"
    }
  }
}

provider "docker" {
  #host = "unix:///var/run/docker.sock" #On Linux use this 
  host = "tcp://localhost:2375"
}

#
resource "docker_image" "juice-shop" {
    name = "bkimminich/juice-shop:latest"
}

# Create container
resource "docker_container" "juice-shop" {
  image = docker_image.juice-shop.latest
  ports {
      internal = 3000
      external = 8000
  }
  name = "juice-shop"
}
