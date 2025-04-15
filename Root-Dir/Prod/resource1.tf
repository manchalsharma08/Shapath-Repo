resource "null_resource" "example_1" {
  provisioner "local-exec" {
    command = "echo Running resource 1"
  }
}
