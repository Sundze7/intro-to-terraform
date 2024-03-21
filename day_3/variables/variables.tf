variable "instance_type" {
  type = string
  default = "t2.micro"
}

variable "filename" {
  type = string
  default = "pets.txt"
}

variable "content" {
  type = string
#   default = "Cats, Dogs, Birds ... My favorite pet is Mr.Dove"
 default = <<-EOF
    This is a multi-line string.
    It can span across multiple lines.
    You can include line breaks, indentation, and special characters.
    EOF
}

variable "prefix" {
  type = list(string)
  default = ["Mr", "Mrs", "Dr"]
}

variable "separator" {
  type = string
  default = "."
}

variable "length" {
  type = number
  default = 1
}

variable "file_content" {
  type = map(string)
  default = {
    "statement1" = "They love pets!"
    "statement2" = "They love animals!"
  }
}

variable "dog" {
  type = object({
    name = string
    age  = number
    food = list(string)
    is_favorite = bool 
  })

  default = {
    name = "spike"
    age = 2
    food = [ "fish", "chicken", "meat" ]
    is_favorite = true
  }
}

variable "cat" {
  type = tuple([ string, number, bool ])
  default = ["muss", 1, true]
}