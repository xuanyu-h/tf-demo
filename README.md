# Infrastructure as code(IaC)

- Manage infrastructure on multiple cloud platforms
- Human-readable
- Track resource changes

---

## Standardize workflow

```
~~~graph-easy --as=boxart
[ Dev ] -> [ IaC ] -> [Plan] -> [Apply] -> [AWS]
[Apply] -> [Azure]
[Apply] -> [K8s]
~~~
```

To deploy infrastructure with Terraform:

- Scope - Identify the infrastructure for your project.
- Author - Write the configuration for your infrastructure.
- Initialize - Install the plugins Terraform needs to manage the infrastructure.
- Plan - Preview the changes Terraform will make to match your configuration.
- Apply - Make the planned changes.

---

## Basic Usage

```terraform
resource "local_file" "foo" {
  content  = "foo!"
  filename = "${path.module}/foo.txt"
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
```

---

## Data VS Variable

- Data sources provide dynamic information about entities that are not managed by the current Terraform and configuration.
- Variables provide static information.
- Data sources allow data to be fetched or computed for use elsewhere in Terraform configuration.

```terraform
data "aws_ami" "free" {
  most_recent = true
  owners      = ["amazon"]

  filter {
    name   = "name"
    values = ["amzn2-ami-hvm-2.0.????????.?-x86_64-gp2"]
  }
}

variable "instance_name" {
  description = "Value of the Name tag for the EC2 instance"
  type        = string
  default     = "TerraformDemo"
}
```

---

## Command

- `terraform init`
- `terraform validate`
- `terraform apply`
- `terraform show`

---

## Dependence

- terraform-cli
- aws-cli
- graph-easy

---

## Reference

- [Terraform Doc](https://www.terraform.io/docs/language/index.html)
- [Terraform Register](https://registry.terraform.io/)
- [Terraform AWS Doc](https://registry.terraform.io/providers/hashicorp/aws/latest/docs)