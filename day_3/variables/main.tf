resource "local_file" "pets" {
  filename = var.filename
#   content = var.content
    content = var.file_content["statement1"]

}

resource "random_pet" "my_pet" {
  prefix = var.prefix[0]
  separator = var.separator
  length = var.length
}

resource "local_file" "cats" {
  filename = "cats.txt"
  content = "My name is ${var.cat[0]},  I am ${var.cat[1]} years old. Am I ur favorite? ${var.cat[2]}"
}

resource "local_file" "dog" {
    filename = "dogs.txt"
    content = "My name is ${var.dog.name},  I am ${var.dog.age} years old and I love ${var.dog.food[1]}. Am I ur favorite? ${var.dog.is_favorite}"
}