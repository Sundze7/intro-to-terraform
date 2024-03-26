resource "local_file" "fruits" {
  filename = "fruits.txt"
  content = "i love fruits cuz they are very nutritive and natural"
#   content = random_pet.pet.id
}

# resource "random_pet" "pet" {
#   length = 2
#   separator = "."
# }