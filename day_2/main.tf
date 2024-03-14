resource "local_file" "pets" {
  filename = "pets.txt"
  content = "Cats, Dogs, Birds ... My favorite pet is ${random_pet.my_pet.id}"
}

resource "random_pet" "my_pet" {
  prefix = "Mr"
  separator = "."
  length = 1
}

resource "aws_instance" "web" {
  ami = data.aws_ami.ubuntu.id
  instance_type = "t2.micro"

  tags = {
    Name = "web-${random_pet.my_pet.id}"
  }
}


data "aws_ami" "ubuntu" {
  most_recent = true

  filter {
    name   = "name"
    values = ["ubuntu/images/hvm-ssd/ubuntu-jammy-22.04-amd64-server-*"]
  }

  filter {
    name   = "virtualization-type"
    values = ["hvm"]
  }

  owners = ["099720109477"] # Canonical
}
