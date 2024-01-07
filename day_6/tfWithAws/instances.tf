resource "aws_instance" "sonar" {
  instance_type = "t2.micro"
  ami = data.aws_ami.ubuntu.id
  tags = merge(local.common_tags, {
    Name = "sonar-sonar"

  })
}

resource "aws_instance" "maven" {
  instance_type = "t2.micro"
  ami = data.aws_ami.ubuntu.id
  tags = merge(local.common_tags, {
    Name = "maven-maven"
  })
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