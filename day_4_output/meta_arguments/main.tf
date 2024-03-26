#for loop accesses the index positions and not the actual value
resource "local_file" "pig" {
  filename = var.filename[count.index]
  content = "we love pork"
  #count uses the for loop
  count = length(var.filename)
}

# for_each loop does not accept a list 
#  accesses the value and not the index 
resource "local_file" "dog" {
  filename = "dog->${var.filename[each.key]}"
  content = "he loves dogs "
#   converting a list to a turple
  for_each = toset(var.filename)
}