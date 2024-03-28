variable "ages" {
  type = list()
  default = [18, 25, 30, 35]
}

variable "ami" {
  type = list(string)
  default = [ "value1", "value2", "value3" ]
}

variable "regions" {
  type = map(string)
  default = {
      "us" = "us-east-1"
      "eu" = "eu-west-1"
      "africa" = "af-south-1"
      
  }
}