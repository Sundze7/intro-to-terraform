locals {
  prefix = var.vpc_name

  common_tags = {
    Team = var.team
    Environment = var.environment
    Project = var.project_name
    #you can call other locals within another local
    #Code = "${local.prefix}-${local.common_tags.Team}"
  }

}

locals {
  users = [
    {
      UserID : "U2"
      Email : "user1@example.com"
      Name : "John Doe"
      Age = 40
    },
    {
      UserID : "U3"
      Email : "user2@example.com"
      Name : "Mary Awa"
      Age = 24
    },
    {
      UserID : "U4"
      Email : "user3@example.com"
      Name : "Mike Truce"
      Age = 21
    }

  ]
}