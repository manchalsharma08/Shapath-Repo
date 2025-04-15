resource "null_resource" "example_2" {
  provisioner "local-exec" {
    command = "echo Running resource 2"
  }
}
