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