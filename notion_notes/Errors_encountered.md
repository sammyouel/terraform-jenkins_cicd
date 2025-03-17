# Errors encountered

Encountered Error :

![image_17.png](notion_notes/image_17.png)

fixed by editing [main.tf](http://main.tf) in the resource part 

This changes the host-side port to **8081** while keeping Jenkins running on port **8080** inside the container.

```
resource "docker_container" "jenkins" {
  image = "jenkins/jenkins:lts"
  name  = "ci-cd-jenkins"
  ports {
    internal = 8080
    external = 8081
  }
}

```