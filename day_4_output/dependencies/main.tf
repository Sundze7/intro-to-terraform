resource "local_file" "cat" {
  filename = "cats.txt"
  content = "we love cats"
}

resource "local_file" "dog" {
  filename = "dogs.txt"
  content = "we love dogs"
  depends_on = [ local_file.cat ]
}

resource "random_pet" "pet" {
  length = 1
}