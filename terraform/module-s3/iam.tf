resource "aws_iam_user" "s3" {
  name = "${var.bucket_name}"
  path = "/"
}

resource "aws_iam_access_key" "s3" {
  user = "${aws_iam_user.s3.name}"
}

resource "aws_iam_policy_attachment" "s3_access" {
  name  = "${var.bucket_name}_access"
  users = ["${aws_iam_user.s3.name}"]

  lifecycle {
    ignore_changes = [
      "roles",
    ]
  }

  policy_arn = "${aws_iam_policy.s3_access.arn}"
}
