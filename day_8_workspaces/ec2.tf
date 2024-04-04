resource "aws_instance" "webserver" {
    instance_type = "t2.micro"
    ami = lookup(var.ami, terraform.workspace)
    tags = {
        Name = "${terraform.workspace}-webserver"
        Environment = terraform.workspace
        Project = "${terraform.workspace}-twitz"
    }
}