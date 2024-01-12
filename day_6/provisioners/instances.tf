resource "aws_instance" "web1" {
  instance_type = "t2.micro"
  ami = "ami-05d4121edd74a9f06"
  user_data = <<-EOS
    #!/bin/bash
    sudo apt update
    sudo apt install -y nginx
    sudo systemctl start nginx
  EOS

  tags = {
    Name = "web-1"
  }
}

resource "aws_instance" "web2" {
  instance_type = "t2.micro"
  ami = "ami-05d4121edd74a9f06"
  user_data = file("nginx.sh")

   tags = {
    Name = "web-2"
  }
}

#Using Privisioners
# needs ssh connection to do provisioning
# terraform doesn't recommend the use od provisioners

resource "aws_instance" "web3" {
  instance_type = "t2.micro"
  ami = "ami-05d4121edd74a9f06"
  #key_name = "nok" //or the option below
  key_name = data.aws_key_pair.nok.key_name
  provisioner "remote-exec" {

    inline = [ 
      "sudo apt update",
      "sudo apt install -y nginx",
      "sudo systemctl start nginx"
     ]    
  }

  #provioner only runs after the connection has been createdD
  connection {
    type = "ssh"
    host = self.public_ip
    user = "ubuntu"
    private_key = file("/home/sundze/Downloads/nok.pem")
  }

  tags = {
    Name = "web-3"
  }
}

data "aws_key_pair" "nok" {
  key_name = "nok"
}