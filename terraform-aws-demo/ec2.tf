resource "aws_instance" "server" {
  ami           = data.aws_ami.free.id
  instance_type = "t2.micro"

  tags = {
    Name = var.instance_name
  }
}