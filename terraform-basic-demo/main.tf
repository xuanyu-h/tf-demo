resource "local_file" "foo" {
  content  = "foo!"
  filename = "${path.module}/foo.bar"
}

resource "random_string" "password" {
  length  = 18
  upper   = true
  lower   = true
  number  = true
  special = false
}

output "password" {
  value = random_string.password.result
}
