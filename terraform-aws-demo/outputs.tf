output "ec2-ami" {
  value = data.aws_ami.free.id
}