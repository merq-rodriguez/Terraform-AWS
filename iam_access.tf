/*
resource "aws_iam_group" "administrators" {
  name = "Administrators"
}

resource "aws_iam_policy_attachment" "admins-attach" {
  name = "admins_attach"
  groups = [aws_iam_group.administrators.name]
  policy_arn = "arn:aws:iam::aws:policy/AdministratorAccess"
}

resource "aws_iam_user" "admin_1" {
  name = "Admin_1"
}


resource "aws_iam_user" "admin_2" {
  name = "Admin_2"
}

resource "aws_iam_group_membership" "admin_users" {
  name = "Admin_Users"
  users = [
    aws_iam_user.admin_1.name,
    aws_iam_user.admin_2.name,
  ]
  group = aws_iam_group.administrators.name
}

resource "aws_iam_access_key" "admin1_access" {
  user = aws_iam_user.admin_1.name
}

resource "aws_iam_access_key" "admin2_access" {
  user = aws_iam_user.admin_2.name
}

output "admin1_access_key" {
  value = aws_iam_access_key.admin1_access.id
}

output "admin1_secret_key" {
  value = aws_iam_access_key.admin1_access.secret
  sensitive = true
}

output "admin2_access_key" {
  value = aws_iam_access_key.admin2_access.id
}

output "admin2_secret_key" {
  value = aws_iam_access_key.admin2_access.secret
  sensitive = true
}
*/