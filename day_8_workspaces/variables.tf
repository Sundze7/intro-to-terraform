variable "ami" {
    type = map(string)
    default = {
        "development" = "ami-dev-xxx"
        "production" = "ami-dev-xxx"
    }
}

variable "region" {
  type = map(string)
  default = {
    "production" = "ca-central-1a"
    "development" = "ca-central-1b"
  }
}