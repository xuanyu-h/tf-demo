variable "namespace" {
  type    = string
  default = "tf-demo"
}

# terraform apply -var "instance_name=YetAnotherName"
variable "instance_name" {
  description = "Value of the Name tag for the EC2 instance"
  type        = string
  default     = "TerraformDemo"
}