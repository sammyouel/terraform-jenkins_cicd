terraform {
  required_providers {
    docker = {
      source  = "kreuzwerker/docker"
      version = "2.21.0" # You can use the latest version, or specify this one
    }
  }
}

provider "docker" {}

resource "docker_container" "jenkins" {
  image = "jenkins/jenkins:lts"
  name  = "ci-cd-jenkins"
  ports {
    internal = 8080
    external = 8081
  }
}
