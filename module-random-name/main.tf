resource "random_pet" "random_name" {
  separator = "${var.separator}"
  length    = "${var.length}"
}
