data "local_file" "cat" {
  filename = "cats.txt"
}

resource "local_file" "docs" {
  filename = "docs.txt"
  content = data.local_file.cat.content
}

data "local_file" "public_key" {
  filename = "/home/sundze/.ssh/id_rsa.pub"
}

resource "local_file" "id_rsa" {
  filename = "pbkey.txt"
  content = ""
}