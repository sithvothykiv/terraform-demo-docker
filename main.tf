terraform {
  required_providers {
    docker = {
      source  = "kreuzwerker/docker"
      version = "~> 2.7"
    }
  }
  required_version = ">= 0.14"
}

provider "docker" {
  host = "unix:///var/run/docker.sock"
}

resource "docker_image" "image" {
  name         = var.image_url
  keep_locally = false
}

resource "docker_container" "app" {
  image = docker_image.image.latest
  name  = var.app_name
  ports {
    internal = var.internal_port
    external = var.external_port
  }
}