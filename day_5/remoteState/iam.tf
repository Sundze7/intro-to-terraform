#format for creating iam user in aws
# created user has zero permissions 

resource "aws_iam_user" "bdadmin" {
    name = "dbadmin"
    tags = local.common_tags

}

resource "aws_iam_user_group_membership" "name" {
  user = aws_iam_user.bdadmin.name

  groups = [
    data.aws_iam_group.admins.group_name
  ]
}

data "aws_iam_group" "admins" {
  group_name = "Admins"
}