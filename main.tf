module "random-name" {
  source    = "./module-random-name"
  separator = "${var.separator}"
  length    = "${var.length}"
}

resource "null_resource" "server" {
  provisioner "local-exec" {
    command = "echo The server name should be: ${module.random-name.proposed_name}"
  }
}
